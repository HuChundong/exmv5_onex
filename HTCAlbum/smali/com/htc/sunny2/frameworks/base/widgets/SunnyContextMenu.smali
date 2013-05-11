.class public Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;
.super Ljava/lang/Object;
.source "SunnyContextMenu.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;)V
    .locals 1
    .parameter "access"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->LOG_TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    .line 22
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    .line 23
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "contextMenu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 28
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    if-nez v2, :cond_1

    .line 38
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 32
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    invoke-interface {p1}, Landroid/view/ContextMenu;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 35
    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 36
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    if-nez v2, :cond_0

    move v1, v0

    .line 50
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 48
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyContextMenu;->mActivityAccess:Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActivityEnvironmentPass;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    move v1, v0

    .line 50
    .restart local v1       #bResult:I
    goto :goto_0
.end method
