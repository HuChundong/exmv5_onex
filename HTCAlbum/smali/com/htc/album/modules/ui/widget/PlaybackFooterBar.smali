.class public Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;
.super Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
.source "PlaybackFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/GalleryFooterBar",
        "<",
        "Lcom/htc/widget/HtcFooter;",
        "Lcom/htc/album/modules/ui/widget/PlayerControllerButton;",
        ">;"
    }
.end annotation


# instance fields
.field private mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "slideshowFooterLayout"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;-><init>(Landroid/content/Context;I)V

    .line 24
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, button:Lcom/htc/widget/HtcRimButton;
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f09002d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v1, Lcom/htc/widget/HtcRimButton;

    .line 33
    .restart local v1       #button:Lcom/htc/widget/HtcRimButton;
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 34
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 35
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 36
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f09002f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v1, Lcom/htc/widget/HtcRimButton;

    .line 37
    .restart local v1       #button:Lcom/htc/widget/HtcRimButton;
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 38
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 39
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 40
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v1, Lcom/htc/widget/HtcRimButton;

    .line 41
    .restart local v1       #button:Lcom/htc/widget/HtcRimButton;
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 42
    sget v2, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 43
    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 46
    const v2, 0x7f030010

    if-ne v2, p2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const v3, 0x7f090032

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcIconButton;

    .line 49
    .local v0, btn:Lcom/htc/widget/HtcIconButton;
    if-eqz v0, :cond_0

    .line 51
    new-instance v2, Lcom/htc/album/modules/ui/widget/IconButton;

    const/16 v3, 0x11

    const/4 v4, 0x3

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/htc/album/modules/ui/widget/IconButton;-><init>(Lcom/htc/widget/HtcIconButton;III)V

    iput-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    .line 52
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    const v3, 0x7f0a0133

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/IconButton;->setTextResource(I)V

    .line 53
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 54
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v3, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 55
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/IconButton;->getButton()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcIconButton;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcIconButton;->setVisibility(I)V

    .line 56
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    invoke-virtual {v2, v6}, Lcom/htc/album/modules/ui/widget/IconButton;->lockBubbleExpandDirection(I)V

    .line 60
    .end local v0           #btn:Lcom/htc/widget/HtcIconButton;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->SetDisplayMode(I)V

    .line 61
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v2, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 21
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v0

    return-object v0
.end method

.method public addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
    .locals 5
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtons:Landroid/util/SparseArray;

    .line 78
    .local v0, buttons:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/htc/album/modules/ui/widget/PlayerControllerButton;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->getMaxButtonCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v1, v2

    .line 90
    :goto_0
    return-object v1

    .line 81
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v1

    .line 82
    .local v1, newButton:Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
    if-nez v1, :cond_2

    move-object v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 88
    iget-object v2, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v1, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    goto :goto_0
.end method

.method public doCenterControlPanel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/htc/widget/HtcFooter;

    const v5, 0x7f09002c

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 167
    .local v2, ly:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_0

    .line 169
    iget-object v4, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v4, Lcom/htc/widget/HtcFooter;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFooter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 170
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 173
    .local v1, fSizeSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 174
    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v4, 0x6

    .line 175
    .local v3, nOffset:I
    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 178
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #fSizeSize:Landroid/graphics/Point;
    .end local v3           #nOffset:I
    :cond_0
    return-void
.end method

.method public findRimButton(I)Lcom/htc/widget/HtcRimButton;
    .locals 3
    .parameter "id"

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    sparse-switch p1, :sswitch_data_0

    .line 155
    :goto_0
    return-object v0

    .line 142
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 143
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    goto :goto_0

    .line 145
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 146
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    goto :goto_0

    .line 148
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 149
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public getMaxButtonCount()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x3

    return v0
.end method

.method public getMoreButton()Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    return-object v0
.end method

.method public bridge synthetic onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 21
    invoke-virtual/range {p0 .. p5}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    move-result-object v0

    return-object v0
.end method

.method public onNewButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/PlayerControllerButton;
    .locals 4
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    sparse-switch p3, :sswitch_data_0

    .line 123
    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 126
    new-instance v1, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p2, p3, v2}, Lcom/htc/album/modules/ui/widget/PlayerControllerButton;-><init>(Lcom/htc/widget/HtcRimButton;III)V

    return-object v1

    .line 101
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 102
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 103
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 104
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 107
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 108
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 109
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 110
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 113
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mRootView:Landroid/view/ViewGroup;

    check-cast v1, Lcom/htc/widget/HtcFooter;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 114
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 115
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 116
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto/16 :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V
    .locals 2
    .parameter "clickListener"
    .parameter "stateListener"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->setButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 68
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonClickListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnClickListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->mBtnMore:Lcom/htc/album/modules/ui/widget/IconButton;

    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/BaseControlBar;->mButtonStateChangeListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/IconButton;->setOnStateChangeListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonStateChangeListener;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setControlPanelEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 182
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    .line 183
    .local v0, btn:Lcom/htc/album/modules/ui/widget/ControlButton;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 186
    :cond_0
    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 190
    :cond_1
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/htc/album/modules/ui/widget/PlaybackFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->setEnabled(Z)V

    .line 193
    :cond_2
    return-void
.end method
