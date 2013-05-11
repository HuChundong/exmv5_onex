.class public Lcom/htc/album/addons/slideshow/SlideShowController;
.super Landroid/widget/FrameLayout;
.source "SlideShowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;
    }
.end annotation


# static fields
.field private static final CONTROL_BAR_SHOW_DURATION:I = 0xbb8

.field public static final GO_BACK_TYPE_DEFAULT:I = 0x0

.field protected static final MSG_FADE_OUT:I = 0x1

.field protected static final MSG_RESET_TO_3D_SBS_STATUS:I = 0x5

.field protected static final MSG_SHOW_PROGRESS:I = 0x2

.field protected static final MSG_UPDATE_BUTTON:I = 0x3


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mContext:Landroid/app/Activity;

.field protected mDecor:Landroid/view/View;

.field protected mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

.field protected mFromXml:Z

.field private mIsPlaying:Z

.field protected mListenersSet:Z

.field protected mNextButton:Lcom/htc/widget/HtcRimButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field protected mPauseButton:Lcom/htc/widget/HtcRimButton;

.field protected mPauseListener:Landroid/view/View$OnClickListener;

.field protected mPrevButton:Lcom/htc/widget/HtcRimButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field protected mRoot:Landroid/view/View;

.field protected mShowing:Z

.field protected mWindow:Landroid/view/Window;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "isPlaying"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "SlideShowController"

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->TAG:Ljava/lang/String;

    .line 28
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    .line 30
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 54
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mFromXml:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 404
    new-instance v0, Lcom/htc/album/addons/slideshow/SlideShowController$1;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/slideshow/SlideShowController$1;-><init>(Lcom/htc/album/addons/slideshow/SlideShowController;)V

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    .line 72
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->initFloatingWindow()V

    .line 73
    iput-boolean p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 75
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 76
    return-void
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 187
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 189
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Pause_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_Play_Dark_Rest(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public IsPlaying()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    return v0
.end method

.method public addButton(Landroid/content/Context;IIII)V
    .locals 4
    .parameter "context"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "imgResId"
    .parameter "txtResId"

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 469
    .local v0, button:Lcom/htc/widget/HtcRimButton;
    sparse-switch p3, :sswitch_data_0

    .line 493
    :goto_0
    invoke-virtual {v0, p4}, Lcom/htc/widget/HtcRimButton;->setIconResource(I)V

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 495
    return-void

    .line 472
    :sswitch_0
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 473
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 474
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 475
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 478
    :sswitch_1
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 479
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 480
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 481
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 484
    :sswitch_2
    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v2, 0x7f090031

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Lcom/htc/widget/HtcRimButton;
    check-cast v0, Lcom/htc/widget/HtcRimButton;

    .line 485
    .restart local v0       #button:Lcom/htc/widget/HtcRimButton;
    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonOuter(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonPressed(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getPlaybackFooterBarMiddleButtonRest(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundResource(III)V

    .line 486
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 487
    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    goto :goto_0

    .line 469
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_2
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0x4f

    const/16 v4, 0x3e

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 337
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    .line 347
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public doPause(Z)V
    .locals 2
    .parameter "doCallback"

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SlideShowController"

    const-string v1, "[HtcAlbum][SlideShowController][doPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 206
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 209
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SlideShowController"

    const-string v1, "[HtcAlbum][SlideShowController][doPause]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_2
    return-void
.end method

.method protected doPauseResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 251
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SlideShowController"

    const-string v3, "[HtcAlbum][SlideShowController][doPauseResume]: Begin"

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v3, "SlideShowController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HtcAlbum][SlideShowController][doPauseResume]: state Change: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-eqz v0, :cond_5

    .line 259
    iput-boolean v2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 261
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPauseTarget()V

    .line 280
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 281
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "SlideShowController"

    const-string v1, "[HtcAlbum][SlideShowController][doPauseResume]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 252
    goto :goto_0

    .line 274
    :cond_5
    iput-boolean v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 275
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    goto :goto_1
.end method

.method public doPlay(Z)V
    .locals 2
    .parameter "doCallback"

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SlideShowController"

    const-string v1, "[HtcAlbum][SlideShowController][doPlay]: Begin"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    if-nez v0, :cond_1

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 218
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    invoke-interface {v0}, Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;->onPlayTarget()Z

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 221
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SlideShowController"

    const-string v1, "[HtcAlbum][SlideShowController][doPlay]: End"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    return-void
.end method

.method public enableNextBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 232
    return-void
.end method

.method public enablePrevBtn(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 227
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 247
    :cond_0
    return-void
.end method

.method protected initControllerView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x4

    .line 119
    const v0, 0x7f09002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    .line 120
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 121
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 122
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 123
    const v0, 0x7f09002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    .line 124
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 125
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 126
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseButton:Lcom/htc/widget/HtcRimButton;

    iget-object v1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f090031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcRimButton;

    iput-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    .line 129
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setWidth(I)V

    .line 130
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_MIDDLE_RIMBUTTON_SIZE:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setHeight(I)V

    .line 131
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 134
    return-void
.end method

.method protected initFloatingWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 97
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mWindowManager:Landroid/view/WindowManager;

    .line 98
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 99
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f030040

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    .local v0, footer:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 103
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->SLIDESHOW_FOOTER_HEIGHT:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_getFooterBarBackground(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 107
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->initControllerView(Landroid/view/View;)V

    .line 110
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusable(Z)V

    .line 111
    invoke-virtual {p0, v5}, Lcom/htc/album/addons/slideshow/SlideShowController;->setFocusableInTouchMode(Z)V

    .line 112
    const/high16 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/htc/album/addons/slideshow/SlideShowController;->setDescendantFocusability(I)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->requestFocus()Z

    .line 114
    iput-boolean v5, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mIsPlaying:Z

    .line 115
    return-void
.end method

.method protected installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextButton:Lcom/htc/widget/HtcRimButton;

    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevButton:Lcom/htc/widget/HtcRimButton;

    iget-object v3, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimButton;->setEnabled(Z)V

    .line 427
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 419
    goto :goto_0

    :cond_3
    move v1, v2

    .line 425
    goto :goto_1
.end method

.method public relayoutByOrientation(I)V
    .locals 0
    .parameter "nOrientation"

    .prologue
    .line 318
    return-void
.end method

.method public setControllerEventListener(Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mEventListener:Lcom/htc/album/addons/slideshow/SlideShowController$ControllerEventListener;

    .line 500
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "next"
    .parameter "prev"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 441
    iput-object p2, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mListenersSet:Z

    .line 444
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->installPrevNextListeners()V

    .line 448
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show(I)V

    .line 154
    return-void
.end method

.method public show(I)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mRoot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->updatePausePlay()V

    .line 176
    return-void
.end method

.method public updateController()V
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/htc/album/addons/slideshow/SlideShowController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->hide()V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/slideshow/SlideShowController;->show()V

    goto :goto_0
.end method
