.class public abstract Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.super Lcom/htc/album/modules/ui/widget/BaseControlBar;
.source "GalleryFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HOST:",
        "Landroid/view/ViewGroup;",
        "CTR",
        "LBTN:Lcom/htc/album/modules/ui/widget/ControlButton",
        "<*>;>",
        "Lcom/htc/album/modules/ui/widget/BaseControlBar",
        "<THOST;TCTR",
        "LBTN;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEF_BUTTON_SIZE:I = 0x4

.field protected static final DEF_FOOTER_HEIGHT:I = 0x78

.field protected static final FOOTER_LAYOUT:I = 0x7f030018

.field protected static final FOOTER_LAYOUT_DMC:I = 0x7f030010

.field protected static final FOOTER_LAYOUT_SLIDESHOW:I = 0x7f03003f

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STYLE_DEFAULT:I = 0x1

.field public static final STYLE_DMC:I = 0x3

.field public static final STYLE_SLIDESHOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 63
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;,"Lcom/htc/album/modules/ui/widget/GalleryFooterBar<THOST;TCTRLBTN;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/BaseControlBar;-><init>(Landroid/content/Context;I)V

    .line 65
    return-void
.end method

.method public static getHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    sget v0, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    return v0
.end method

.method public static makeFooter(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 3
    .parameter "context"
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
            "<**>;"
        }
    .end annotation

    .prologue
    const v2, 0x7f030018

    const/4 v1, 0x1

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 48
    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    invoke-direct {v0, p0, v2, v1}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;-><init>(Landroid/content/Context;IZ)V

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    invoke-direct {v0, p0, v2, v1}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 44
    :pswitch_1
    new-instance v0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    const v1, 0x7f03003f

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 46
    :pswitch_2
    new-instance v0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;

    const v1, 0x7f030010

    invoke-direct {v0, p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeFooter(Landroid/content/Context;Z)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 2
    .parameter "context"
    .parameter "bEnableFooterRight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/htc/album/modules/ui/widget/GenericFooterBar;

    const v1, 0x7f030018

    invoke-direct {v0, p0, v1, p1}, Lcom/htc/album/modules/ui/widget/GenericFooterBar;-><init>(Landroid/content/Context;IZ)V

    return-object v0
.end method


# virtual methods
.method public addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 6
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)TCTR",
            "LBTN;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;,"Lcom/htc/album/modules/ui/widget/GalleryFooterBar<THOST;TCTRLBTN;>;"
    const/4 v4, 0x0

    .line 97
    sparse-switch p3, :sswitch_data_0

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/htc/album/modules/ui/widget/BaseControlBar;->addDefaultButton(Landroid/content/Context;II)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    :goto_0
    return-object v0

    .line 101
    :sswitch_0
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_More_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0133

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_1
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Share_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0130

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_2
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Edit_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0140

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 113
    :sswitch_3
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Trim_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0149

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 117
    :sswitch_4
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Delete_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0131

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 121
    :sswitch_5
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Info_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0147

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 125
    :sswitch_6
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_More_Dark_Rest(Landroid/content/Context;)I

    move-result v4

    const v5, 0x7f0a0148

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 129
    :sswitch_7
    const v5, 0x7f0a0117

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto :goto_0

    .line 133
    :sswitch_8
    const v5, 0x7f0a0116

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    goto/16 :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0xa -> :sswitch_2
        0xb -> :sswitch_5
        0xc -> :sswitch_6
        0xe -> :sswitch_3
        0x11 -> :sswitch_0
        0x2c -> :sswitch_7
        0x2d -> :sswitch_8
    .end sparse-switch
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 75
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;,"Lcom/htc/album/modules/ui/widget/GalleryFooterBar<THOST;TCTRLBTN;>;"
    const/4 v0, 0x4

    return v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 4
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII)TCTR",
            "LBTN;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, this:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;,"Lcom/htc/album/modules/ui/widget/GalleryFooterBar<THOST;TCTRLBTN;>;"
    new-instance v0, Lcom/htc/widget/HtcFooterButton;

    invoke-direct {v0, p1}, Lcom/htc/widget/HtcFooterButton;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, btnView:Lcom/htc/widget/HtcFooterButton;
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 87
    new-instance v1, Lcom/htc/album/modules/ui/widget/FooterButton;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/FooterButton;-><init>(Lcom/htc/widget/HtcFooterButton;III)V

    return-object v1
.end method
