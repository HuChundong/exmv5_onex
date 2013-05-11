.class public Lcom/htc/sunny2/frameworks/utils/WindowHelper;
.super Ljava/lang/Object;
.source "WindowHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WindowHelper"

.field public static SB_HEIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowStatusBarHeight(Landroid/app/Activity;)I
    .locals 4
    .parameter "activity"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, nStatusBarHeight:I
    sget v3, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    if-nez v3, :cond_0

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 69
    .local v1, rectangle:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 70
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 72
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-eqz v3, :cond_0

    .line 73
    iget v3, v1, Landroid/graphics/Rect;->top:I

    sput v3, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    .line 75
    .end local v1           #rectangle:Landroid/graphics/Rect;
    .end local v2           #window:Landroid/view/Window;
    :cond_0
    sget v3, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    if-eqz v3, :cond_1

    .line 76
    sget v0, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->SB_HEIGHT:I

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_1
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->SYSTEM_BAR_HEIGHT_DIMEN:I

    goto :goto_0
.end method

.method public static keepScreenOn(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "keepOn"

    .prologue
    const/16 v1, 0x80

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    .local v0, window:Landroid/view/Window;
    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public static showFullscreen(Landroid/app/Activity;Z)V
    .locals 3
    .parameter "activity"
    .parameter "showFull"

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 29
    if-nez p0, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 33
    .local v0, window:Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 36
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
