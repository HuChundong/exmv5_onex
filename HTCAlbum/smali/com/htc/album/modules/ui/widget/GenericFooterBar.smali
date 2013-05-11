.class public Lcom/htc/album/modules/ui/widget/GenericFooterBar;
.super Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.source "GenericFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
        "<",
        "Lcom/htc/widget/HtcFooter;",
        "Lcom/htc/album/modules/ui/widget/FooterButton;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEF_BUTTON_SIZE:I = 0x4

.field protected static final DEF_FOOTER_HEIGHT:I = 0x78

.field protected static final FOOTER_LAYOUT:I = 0x7f030018

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mEnableFooterRight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "bEnableFooterRight"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;-><init>(Landroid/content/Context;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->mEnableFooterRight:Z

    .line 45
    iput-boolean p3, p0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->mEnableFooterRight:Z

    .line 47
    iget-boolean v0, p0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->mEnableFooterRight:Z

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/htc/widget/HtcFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 49
    :cond_0
    return-void
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public static makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GenericFooterBar;
    .locals 3
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    const v1, 0x7f030018

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v0

    return-object v0
.end method

.method public addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 6
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"

    .prologue
    .line 81
    sparse-switch p3, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    :goto_0
    return-object v0

    .line 85
    :sswitch_0
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_More_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0133

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0

    .line 89
    :sswitch_1
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0130

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0

    .line 93
    :sswitch_2
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0140

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    goto :goto_0

    .line 81
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xa -> :sswitch_2
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 19
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/FooterButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/FooterButton;
    .locals 4
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 68
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, btnView:Lcom/htc/widget/HtcFooterButton;
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/widget/HtcFooter;->addView(Landroid/view/View;II)V

    .line 71
    new-instance v1, Lcom/htc/album/modules/ui/widget/FooterButton;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;-><init>(Lcom/htc/widget/HtcFooterButton;III)V

    return-object v1
.end method
