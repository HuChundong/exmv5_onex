.class public Lcom/htc/album/modules/ui/ControlBarManager;
.super Ljava/lang/Object;
.source "ControlBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
    }
.end annotation


# static fields
.field public static final ANIMATION_FADEIN:I = 0x1

.field public static final ANIMATION_FADEOUT:I = 0x2

.field private static final ANIMATION_NONE:I = 0x0

.field public static final FOOTER_BAR:I = 0x2

.field public static final HEADER_BAR:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ControlBarManager"


# instance fields
.field private mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mContext:Landroid/content/Context;

.field private final mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mEnableAnimation:Z

.field private mEnableFooterRight:Z

.field private mEnableInvalidateWhenShow:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private mHost:Lcom/htc/album/modules/ui/IControlBarHost;

.field private mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

.field private mIdentifier:Ljava/lang/String;

.field private final mInvalidateControlBarsAction:Ljava/lang/Runnable;

.field private mLifeCycle:I

.field private mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

.field private final mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

.field private final mToggleControlBarsAction:Ljava/lang/Runnable;

.field private mUiThread:Ljava/lang/Thread;

.field private mWorkaroundFooterParent:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V
    .locals 5
    .parameter "context"
    .parameter "handler"
    .parameter "host"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 51
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 52
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 54
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 62
    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    .line 64
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    .line 67
    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 70
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$1;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$1;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    .line 82
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$2;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$2;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 94
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$3;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$3;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 105
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$4;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 116
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$5;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$5;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 127
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$6;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$6;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    .line 138
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$7;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$7;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 151
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 153
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 155
    :cond_0
    iput-object p3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 158
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 159
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 160
    .local v0, footerlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 162
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;Z)V
    .locals 5
    .parameter "context"
    .parameter "handler"
    .parameter "host"
    .parameter "bEnableFooterRight"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 51
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 52
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 54
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 60
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 62
    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    .line 64
    iput-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    .line 67
    iput-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 70
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$1;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$1;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    .line 82
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$2;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$2;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 94
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$3;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$3;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 105
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$4;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 116
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$5;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$5;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 127
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$6;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$6;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    .line 138
    new-instance v1, Lcom/htc/album/modules/ui/ControlBarManager$7;

    invoke-direct {v1, p0}, Lcom/htc/album/modules/ui/ControlBarManager$7;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 167
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 169
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 171
    :cond_0
    iput-object p3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 172
    iput-boolean p4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    .line 176
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    .line 177
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v0, footerlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    iget-boolean v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    if-eqz v1, :cond_1

    .line 180
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doToggleControlBarsVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideHeaderControlBar(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideFooterControlBar(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/album/modules/ui/ControlBarManager;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    return-void
.end method

.method private createAnimation(II)Landroid/view/animation/Animation;
    .locals 5
    .parameter "nBarStyle"
    .parameter "animationStyle"

    .prologue
    const/4 v4, 0x2

    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, animation:Landroid/view/animation/Animation;
    sget-boolean v1, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ControlBarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ControlBarManager][createAnimation]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 662
    :cond_1
    :goto_0
    return-object v0

    .line 632
    :pswitch_0
    if-ne v4, p1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v3, 0x121

    iget-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->create(Landroid/content/Context;Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 647
    :pswitch_1
    if-ne v4, p1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    const/16 v3, 0x122

    iget-boolean v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableFooterRight:Z

    invoke-static {v1, v2, v3, v4}, Lcom/htc/album/Animation/animationSetFadeInOutDropList;->create(Landroid/content/Context;Landroid/view/View;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCreateFooterBar(IZ)V
    .locals 7
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 326
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 327
    .local v3, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const/4 v5, -0x1

    if-ne v5, p1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-interface {v3}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v2

    check-cast v2, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 334
    .local v2, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v2, :cond_2

    .line 336
    invoke-interface {v3, p1}, Lcom/htc/album/modules/ui/IControlBarHost;->onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v2

    .line 337
    if-eqz v2, :cond_0

    .line 339
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1, v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->addControlBar(ILcom/htc/album/modules/ui/widget/BaseControlBar;)V

    .line 341
    :cond_2
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->switchControlBar(I)V

    .line 342
    if-eqz p2, :cond_3

    .line 343
    invoke-interface {v3, v2}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    .line 346
    :cond_3
    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 347
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v6

    if-ne v5, v6, :cond_0

    .line 348
    :cond_4
    const/4 v4, 0x0

    .line 349
    .local v4, visibility:I
    const/4 v1, 0x1

    .line 350
    .local v1, animationStyle:I
    if-nez p2, :cond_5

    .line 351
    const/16 v4, 0x8

    .line 352
    const/4 v1, 0x0

    .line 354
    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v5, v4, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    goto :goto_0
.end method

.method private doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 7
    .parameter "viewRoot"
    .parameter "contentView"

    .prologue
    .line 268
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 269
    .local v1, host:Lcom/htc/album/modules/ui/IControlBarHost;
    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-nez v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 279
    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 282
    :cond_2
    new-instance v4, Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 283
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    .line 284
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setOnControlBarClickListener(Lcom/htc/album/modules/ui/widget/ControlBarContainer$OnControlBarClickListener;)V

    .line 285
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setDrawingCacheEnabled(Z)V

    .line 288
    iget-object v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->attachTo(Landroid/view/ViewGroup;)V

    .line 289
    if-eqz p2, :cond_3

    instance-of v4, p2, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_3

    move-object v3, p2

    .line 291
    check-cast v3, Landroid/widget/RelativeLayout;

    .line 292
    .local v3, relativeLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 293
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xe

    iget-object v5, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 295
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #relativeLayout:Landroid/widget/RelativeLayout;
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_0
.end method

.method private doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x2

    .line 513
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    .line 515
    if-nez p2, :cond_0

    .line 516
    invoke-direct {p0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p2

    .line 517
    :cond_0
    invoke-direct {p0, v1, v2, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_2

    .line 522
    const-string v0, "ControlBarManager"

    const-string v1, "[HTCAlbum][ControlBarManager][doHideControlBars]: "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v0, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 525
    :cond_2
    return-void
.end method

.method private doHideFooterControlBar(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x2

    .line 535
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_1

    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-direct {p0, v1, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p1

    .line 539
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 541
    :cond_1
    return-void
.end method

.method private doHideHeaderControlBar(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 532
    :cond_0
    return-void
.end method

.method private doInvalidateControlBars()V
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->isControlBarShowing()Z

    move-result v0

    .line 406
    .local v0, currentVisibility:Z
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedBarId()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateFooterBar(IZ)V

    .line 410
    :cond_0
    return-void
.end method

.method private doInvalidateFooterBar(IZ)V
    .locals 3
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHost:Lcom/htc/album/modules/ui/IControlBarHost;

    .line 361
    .local v1, host:Lcom/htc/album/modules/ui/IControlBarHost;
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-ne v2, p1, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-interface {v1}, Lcom/htc/album/modules/ui/IControlBarHost;->requestFooterBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2, p1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getControlBar(I)Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 368
    .local v0, footer:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    if-nez v0, :cond_2

    .line 369
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterBar(IZ)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/IControlBarHost;->onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V

    goto :goto_0
.end method

.method private doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setVisibility(I)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_2

    .line 455
    if-nez p2, :cond_1

    .line 456
    invoke-direct {p0, v3, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object p2

    .line 457
    :cond_1
    invoke-direct {p0, v3, v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 459
    :cond_2
    iget-boolean v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    if-ne v2, v0, :cond_3

    .line 461
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager;->doInvalidateControlBars()V

    .line 463
    :cond_3
    return-void
.end method

.method private doToggleControlBarsVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 559
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-nez v1, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v0

    .line 565
    .local v0, nVisibility:I
    if-nez v0, :cond_2

    .line 567
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 571
    :cond_2
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 576
    .end local v0           #nVisibility:I
    :cond_3
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v0

    .line 582
    .restart local v0       #nVisibility:I
    if-nez v0, :cond_4

    .line 584
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doHideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 588
    :cond_4
    invoke-direct {p0, v2, v2}, Lcom/htc/album/modules/ui/ControlBarManager;->doShowControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setControlBarVisibility(III)V
    .locals 1
    .parameter "style"
    .parameter "visibility"
    .parameter "animationStyle"

    .prologue
    .line 667
    invoke-direct {p0, p1, p3}, Lcom/htc/album/modules/ui/ControlBarManager;->createAnimation(II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(IILandroid/view/animation/Animation;)V

    .line 668
    return-void
.end method

.method private setControlBarVisibility(IILandroid/view/animation/Animation;)V
    .locals 7
    .parameter "style"
    .parameter "visibility"
    .parameter "animation"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, container:Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 683
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 799
    :goto_1
    return-void

    .line 678
    :pswitch_0
    iget-object v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v3, :cond_0

    .line 679
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    goto :goto_0

    .line 691
    :cond_1
    instance-of v3, p3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_2

    .line 693
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 695
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 696
    .local v1, thisAnim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 698
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: cancel previous anim..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 704
    .end local v1           #thisAnim:Landroid/view/animation/Animation;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v3

    if-ne v3, p2, :cond_3

    .line 706
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: skip same visibility..."

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 709
    :cond_3
    iget-boolean v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-eqz v3, :cond_6

    .line 711
    if-eqz p3, :cond_5

    .line 717
    const/4 v3, 0x3

    iget v4, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    if-ne v3, v4, :cond_4

    .line 719
    sparse-switch p2, :sswitch_data_0

    goto :goto_1

    .line 722
    :sswitch_0
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 726
    :sswitch_1
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 734
    :cond_4
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: startAnimation... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {v0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 758
    :goto_2
    sparse-switch p2, :sswitch_data_1

    goto :goto_1

    .line 762
    :sswitch_2
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto :goto_1

    .line 740
    :cond_5
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: no anim... "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 745
    :cond_6
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 748
    :sswitch_3
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: VISIBLE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {v0, v5}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 752
    :sswitch_4
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 768
    :sswitch_5
    if-eqz p3, :cond_7

    iget-boolean v3, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableAnimation:Z

    if-nez v3, :cond_8

    .line 770
    :cond_7
    const-string v3, "ControlBarManager"

    const-string v4, "[HTCAlbum][ControlBarManager][setControlBarVisibility]: GONE "

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, v6}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 775
    :cond_8
    move-object v2, v0

    .line 776
    .local v2, v:Landroid/view/View;
    new-instance v3, Lcom/htc/album/modules/ui/ControlBarManager$8;

    invoke-direct {v3, p0, v2}, Lcom/htc/album/modules/ui/ControlBarManager$8;-><init>(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/View;)V

    invoke-virtual {p3, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_1

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 719
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 758
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_5
    .end sparse-switch

    .line 745
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_3
        0x8 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 192
    return-void
.end method

.method public attach(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .parameter "root"
    .parameter "contentView"

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->doCreateFooterContainer(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0
.end method

.method public attachActionBar(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;)V
    .locals 0
    .parameter "actionBar"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 204
    return-void
.end method

.method public attachHostBar(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 207
    if-nez p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    invoke-direct {v0, p1}, Lcom/htc/album/modules/ui/widget/GalleryHostBar;-><init>(Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    goto :goto_0
.end method

.method public createControlBar(II)V
    .locals 1
    .parameter "style"
    .parameter "id"

    .prologue
    .line 240
    packed-switch p1, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 244
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    goto :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public createControlBar(IIZ)V
    .locals 0
    .parameter "style"
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 260
    :goto_0
    return-void

    .line 256
    :pswitch_0
    invoke-virtual {p0, p2, p3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final createControlBars(II)V
    .locals 1
    .parameter "headerId"
    .parameter "footerId"

    .prologue
    .line 414
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 415
    return-void
.end method

.method public createFooterBar(IZ)V
    .locals 3
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 301
    .local v0, r:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setVisible(Z)V

    .line 302
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setId(I)V

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_0

    .line 305
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public createFooterBarWithoutThreadCheck(IZ)V
    .locals 2
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mCreateFooterAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    .line 317
    .local v0, r:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
    invoke-virtual {v0, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setVisible(Z)V

    .line 318
    invoke-virtual {v0, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setId(I)V

    .line 320
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->clearAnimation()V

    .line 222
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->detach()V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mWorkaroundFooterParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 228
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    .line 229
    return-void
.end method

.method public final getFooterBar()Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 2

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 380
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getFocusedControlBar()Lcom/htc/album/modules/ui/widget/BaseControlBar;

    move-result-object v0

    .end local v0           #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    check-cast v0, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    .line 382
    .restart local v0       #footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    :cond_0
    return-object v0
.end method

.method public final getFooterContainer()Lcom/htc/album/modules/ui/widget/ControlBarContainer;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHostBar:Lcom/htc/album/modules/ui/widget/GalleryHostBar;

    return-object v0
.end method

.method public final hideControlBar(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 544
    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    .line 545
    return-void
.end method

.method public final hideControlBars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 468
    return-void
.end method

.method public final hideControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 473
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    .line 477
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 479
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 480
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final hideFooterControlBar(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 501
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 506
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 507
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideFooterBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final hideHeaderControlBar(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 487
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setHeaderBarAnimation(Landroid/view/animation/Animation;)V

    .line 493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 494
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHideHeaderBarAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final invalidateControlBars()V
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public final invalidateControlBarsWithoutThreadCheck()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mInvalidateControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    return-void
.end method

.method public isControlBarShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 596
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v2, :cond_4

    .line 599
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 599
    goto :goto_0

    .line 603
    :cond_2
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    if-eqz v2, :cond_3

    .line 604
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mListFooters:Lcom/htc/album/modules/ui/widget/ControlBarContainer;

    invoke-virtual {v2}, Lcom/htc/album/modules/ui/widget/ControlBarContainer;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 606
    :cond_3
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    if-eqz v2, :cond_4

    .line 607
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 609
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 237
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mLifeCycle:I

    .line 233
    return-void
.end method

.method public setEnableAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 620
    return-void
.end method

.method public setEnableInvalidateWhenShow(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mEnableInvalidateWhenShow:Z

    .line 614
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .parameter "szId"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mIdentifier:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public final showControlBar(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 419
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->setControlBarVisibility(III)V

    .line 420
    return-void
.end method

.method public final showControlBars()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 424
    invoke-virtual {p0, v0, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 425
    return-void
.end method

.method public final showControlBars(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "headerAnimation"
    .parameter "footerAnimation"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    .line 430
    .local v0, handler:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1, p2}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->setFooterBarAnimation(Landroid/view/animation/Animation;)V

    .line 435
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    .line 437
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mShowControlBarsAction:Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->run()V

    goto :goto_0
.end method

.method public final toggleControlBarsVisibility()V
    .locals 2

    .prologue
    .line 549
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager;->mToggleControlBarsAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
