.class public abstract Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.super Ljava/lang/Object;
.source "SunnyScene.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunnyCore/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene",
        "<TADAPTER;>;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

.field private mActionBarGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

.field protected mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TADAPTER;"
        }
    .end annotation
.end field

.field private mAnimState:I

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIsAdapterBound:Z

.field private mIsAnimationCreated:Z

.field private mIsAnimationEnded:Z

.field private mIsAnimationPlayed:Z

.field private mIsAnimationPrepared:Z

.field private mIsSceneAdapterUnbinded:Z

.field private mIsSceneEntered:Z

.field private mIsSceneLeft:Z

.field private mIsSceneSentToBackground:Z

.field private mIsSceneSentToForeground:Z

.field private mIsSecureDestroyAdapter:Z

.field private mIsSecureNewAdapter:Z

.field private mIsSecureOnPrepareOptionsMenu:Z

.field protected mMainView:Lcom/htc/sunnyCore/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field

.field protected mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

.field protected mSceneAnimationCust:Z

.field protected mSceneAnimationSupport:Z

.field protected mSceneBundle:Landroid/os/Bundle;

.field protected mSceneCancelled:Z

.field protected mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field protected mSceneDepth:I

.field private mSceneState:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "SunnyScene"

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAnimState:I

    .line 57
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .line 58
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 59
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 60
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneCancelled:Z

    .line 63
    const/16 v0, -0x64

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 64
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    .line 272
    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    .line 413
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    .line 464
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureNewAdapter:Z

    .line 465
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureDestroyAdapter:Z

    .line 573
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    .line 574
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    .line 575
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    .line 576
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    .line 604
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    .line 605
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    .line 606
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    .line 607
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    .line 608
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    .line 609
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    .line 610
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 702
    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$2;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    .line 734
    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$3;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    return-void
.end method

.method private resetSecureAnimationState()V
    .locals 1

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    .line 597
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    .line 598
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    .line 599
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    .line 600
    return-void
.end method


# virtual methods
.method public actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 1

    .prologue
    .line 680
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    return-object v0
.end method

.method public actionBarMode()I
    .locals 1

    .prologue
    .line 672
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public decrementDepth()V
    .locals 1

    .prologue
    .line 246
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 248
    return-void
.end method

.method public enableActionBarOverlay()Z
    .locals 1

    .prologue
    .line 676
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableActionBarUpdate()Z
    .locals 1

    .prologue
    .line 724
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 430
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableConfigurationChangedInBackground()Z
    .locals 1

    .prologue
    .line 229
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableContextMenu()Z
    .locals 1

    .prologue
    .line 109
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableDropList()V
    .locals 0

    .prologue
    .line 750
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public enableFullScreen()Z
    .locals 1

    .prologue
    .line 113
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableHostCamera()Z
    .locals 1

    .prologue
    .line 121
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public enableHostPadding()Z
    .locals 1

    .prologue
    .line 117
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAnimationDuration()I
    .locals 2

    .prologue
    .line 555
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->getAnimationDuration()I

    move-result v0

    .line 556
    .local v0, nDuration:I
    return v0
.end method

.method public getAnimationState()I
    .locals 1

    .prologue
    .line 565
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAnimState:I

    return v0
.end method

.method public final getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 97
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 251
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    return v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    .prologue
    .line 516
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 285
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 80
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    return v0
.end method

.method public final getMainView()Lcom/htc/sunnyCore/view/SView;
    .locals 1

    .prologue
    .line 89
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    return-object v0
.end method

.method public getSceneControl()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    .locals 1

    .prologue
    .line 105
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-object v0
.end method

.method public incrementDepth()V
    .locals 1

    .prologue
    .line 241
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 243
    return-void
.end method

.method public isHostScene()Z
    .locals 1

    .prologue
    .line 84
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final isSecureAnimationCreate()Z
    .locals 1

    .prologue
    .line 583
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    return v0
.end method

.method public final isSecureAnimationEnd()Z
    .locals 1

    .prologue
    .line 591
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    return v0
.end method

.method public final isSecureAnimationPlay()Z
    .locals 1

    .prologue
    .line 587
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    return v0
.end method

.method public final isSecureAnimationPrepare()Z
    .locals 1

    .prologue
    .line 579
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    return v0
.end method

.method public isSecureBindAdapter()Z
    .locals 1

    .prologue
    .line 622
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    return v0
.end method

.method public isSecureEnterScene()Z
    .locals 1

    .prologue
    .line 614
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    return v0
.end method

.method public isSecureLeaveScene()Z
    .locals 1

    .prologue
    .line 635
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    return v0
.end method

.method public isSecureOnDestroyAdapter()Z
    .locals 1

    .prologue
    .line 487
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureDestroyAdapter:Z

    return v0
.end method

.method public isSecureOnNewAdapter()Z
    .locals 1

    .prologue
    .line 483
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureNewAdapter:Z

    return v0
.end method

.method public isSecureOnPrepareOptionsMenu()Z
    .locals 1

    .prologue
    .line 416
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    return v0
.end method

.method public isSecureSendToBackground()Z
    .locals 1

    .prologue
    .line 631
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    return v0
.end method

.method public isSecureSendToForeground()Z
    .locals 1

    .prologue
    .line 618
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    return v0
.end method

.method public isSecureTo(I)Z
    .locals 2
    .parameter "nState"

    .prologue
    .line 639
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 641
    .local v0, bResult:Z
    sparse-switch p1, :sswitch_data_0

    .line 662
    const/4 v0, 0x1

    .line 665
    :cond_0
    :goto_0
    return v0

    .line 645
    :sswitch_0
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 646
    const/4 v0, 0x1

    goto :goto_0

    .line 651
    :sswitch_1
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 652
    const/4 v0, 0x1

    goto :goto_0

    .line 657
    :sswitch_2
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 658
    const/4 v0, 0x1

    goto :goto_0

    .line 641
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public isSecureUnbindAdapter()Z
    .locals 1

    .prologue
    .line 627
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    return v0
.end method

.method public onActionBarBackPressed()V
    .locals 0

    .prologue
    .line 697
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onActionBarClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 733
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method protected onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 728
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 238
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 1
    .parameter "nAnimState"

    .prologue
    .line 560
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onAnimationEnd(I)V

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    .line 562
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 400
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 8

    .prologue
    .line 157
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableFullScreen()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 161
    .local v0, activity:Landroid/app/Activity;
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SView;->getPaddingLeft()I

    move-result v2

    .line 162
    .local v2, left:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SView;->getPaddingTop()I

    move-result v5

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v6

    add-int v4, v5, v6

    .line 163
    .local v4, top:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SView;->getPaddingRight()I

    move-result v3

    .line 164
    .local v3, right:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v5}, Lcom/htc/sunnyCore/view/SView;->getPaddingBottom()I

    move-result v1

    .line 166
    .local v1, bottom:I
    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-virtual {v5, v2, v4, v3, v1}, Lcom/htc/sunnyCore/view/SView;->setPadding(IIII)V

    .line 169
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    .line 170
    iget v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 171
    const-string v5, "SunnyScene"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SunnyScene][onBindAdapter]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 434
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 438
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanFinished(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 450
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaScanStarted(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 444
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 456
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCancelNewAdapter()V
    .locals 1

    .prologue
    .line 477
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneCancelled:Z

    .line 478
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    .line 480
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 226
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onConfigurationChangedInBackground(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 234
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 390
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 201
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 540
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    .line 541
    .local v0, animationBundle:Landroid/os/Bundle;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    .line 542
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 382
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 404
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateFragmentDialog(ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 759
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateScene()Lcom/htc/sunnyCore/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVIEW;"
        }
    .end annotation
.end method

.method public abstract onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 221
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onDestroyAdapter()V
    .locals 1

    .prologue
    .line 473
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureDestroyAdapter:Z

    .line 474
    return-void
.end method

.method public abstract onDestroyScene()V
.end method

.method public onDismissFragmentDialog(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 763
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarAppButton()Z
    .locals 1

    .prologue
    .line 700
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarBackButton()Z
    .locals 1

    .prologue
    .line 692
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnableActionBarTouchEvent()Z
    .locals 1

    .prologue
    .line 720
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v2, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateScene()Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    .line 126
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunnyCore/view/SView;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunnyCore/view/SView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    .line 137
    :goto_0
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    .line 138
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 139
    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onEnterScene]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 135
    :cond_0
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationCust:Z

    goto :goto_0
.end method

.method public onLeaveScene()V
    .locals 3

    .prologue
    .line 193
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onDestroyScene()V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    .line 195
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 196
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onLeaveScene]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    return-void
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 290
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 293
    .local v0, bResult:Z
    return v0
.end method

.method public onNewAdapter(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 469
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureNewAdapter:Z

    .line 470
    return-void
.end method

.method public onNotifyDepthDecremented()V
    .locals 0

    .prologue
    .line 268
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onNotifyDepthIncremented()V
    .locals 0

    .prologue
    .line 260
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 372
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 213
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V
    .locals 1
    .parameter "animIn"
    .parameter "animOut"
    .parameter "listener"

    .prologue
    .line 546
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunnyCore/view/animation/SAnimationController$AnimationListener;)V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    .line 548
    return-void
.end method

.method public onPostMessage(I)V
    .locals 2
    .parameter "nMessageID"

    .prologue
    .line 297
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 299
    return-void
.end method

.method public onPostMessage(II)V
    .locals 1
    .parameter "nMessageID"
    .parameter "delayMillis"

    .prologue
    .line 302
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onPostMessage(ILjava/lang/Object;I)V

    .line 304
    return-void
.end method

.method public onPostMessage(IIILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 315
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, msg:Landroid/os/Message;
    if-lez p5, :cond_1

    .line 321
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    int-to-long v2, p5

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 308
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 2
    .parameter "nAnimState"

    .prologue
    .line 531
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    .line 532
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onPrepareAnimation(I)Z

    move-result v0

    .line 533
    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimationSupport:Z

    .line 534
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    .line 535
    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAnimState:I

    .line 536
    return v0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "extras"

    .prologue
    .line 408
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v12, 0x0

    .line 342
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isInvalidateOptionsMenuUponDataBind()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return v12

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarBackkeyListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mActionBarGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableActionBarUpdate()Z

    move-result v4

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnableActionBarBackButton()Z

    move-result v5

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnableActionBarTouchEvent()Z

    move-result v6

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->isHostScene()Z

    move-result v7

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onEnableActionBarAppButton()Z

    move-result v8

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableFullScreen()Z

    move-result v9

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onUpdateActionBarTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onUpdateActionBarSecondaryTitle()Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    invoke-static/range {v0 .. v11}, Lcom/htc/sunny2/common/HtcPaneManager;->onPrepareHtcActionBar(Landroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;Landroid/view/View$OnClickListener;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;ZZZZZZLjava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    goto :goto_0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 329
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 209
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    .line 182
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 184
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    .line 185
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 187
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->resetSecureAnimationState()V

    .line 188
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 189
    sget-boolean v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onSendToBackground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    .line 144
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    .line 147
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 149
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->resetSecureAnimationState()V

    .line 151
    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneDepth:I

    .line 152
    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onSendToForeground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 205
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onStartAnimation(I)V
    .locals 0
    .parameter "nAnimState"

    .prologue
    .line 552
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 217
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 0

    .prologue
    .line 521
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public onUnbindAdapter()V
    .locals 3

    .prologue
    .line 175
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    .line 176
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    .line 177
    const-string v0, "SunnyScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onUnbindAdapter]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public onUpdateActionBarSecondaryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpdateActionBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetOnPrepareOptionsMenu()V
    .locals 1

    .prologue
    .line 420
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSecureOnPrepareOptionsMenu:Z

    .line 421
    return-void
.end method

.method public final setAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 93
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .line 94
    return-void
.end method

.method public bridge synthetic setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    check-cast p1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 282
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "nId"

    .prologue
    .line 76
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    .line 77
    return-void
.end method

.method public final setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "sceneControl"

    .prologue
    .line 101
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 102
    return-void
.end method

.method public final setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 491
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    .local p1, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;,"TADAPTER;"
    const/4 v2, 0x0

    .line 493
    .local v2, szSecured:Ljava/lang/String;
    move-object v0, p1

    .line 494
    .local v0, sceneAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, szAdapterIdentity:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 497
    :cond_0
    const-string v2, "Error identifier(null): "

    .line 508
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    .line 510
    return-object v2

    .line 499
    :cond_2
    if-nez p1, :cond_3

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adapter(null): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 503
    :cond_3
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    check-cast p1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected workaroundBuildSDKDroiddocParseProblem()Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TADAPTER;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;,"Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene<TVIEW;TADAPTER;>;"
    const/4 v0, 0x0

    return-object v0
.end method
