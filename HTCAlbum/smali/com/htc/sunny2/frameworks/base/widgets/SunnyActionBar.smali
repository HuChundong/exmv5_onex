.class public Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;
.super Ljava/lang/Object;
.source "SunnyActionBar.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;


# static fields
.field private static final EFFECTIVE_GESTURE_RATIO:D = 0.2

.field private static final LOG_TAG:Ljava/lang/String; = "SunnyActionBar"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

.field private mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

.field private mActionBarText:Lcom/htc/widget/ActionBarText;

.field private mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field private mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

.field private mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

.field private mProgressLoadingState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/ActionBar;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;)V
    .locals 5
    .parameter "activity"
    .parameter "actionBar"
    .parameter "mode"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 40
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 41
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 42
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 43
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 45
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 48
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 49
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    .line 91
    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 96
    invoke-virtual {p2}, Landroid/app/ActionBar;->hide()V

    .line 97
    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 98
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 100
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, p3, :cond_1

    .line 102
    new-instance v0, Lcom/htc/widget/ActionBarText;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 103
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v4}, Lcom/htc/widget/ActionBarText;->setSecondaryVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, p3, :cond_0

    .line 111
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1, v3}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 112
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v4}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 3
    .parameter "context"
    .parameter "actionBar"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 40
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 41
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 42
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    .line 43
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 45
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 48
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_UNKNOWN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 49
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    .line 51
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    .line 65
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    .line 66
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    .line 67
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-direct {v0, p1, p2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 72
    new-instance v0, Lcom/htc/widget/ActionBarDropDown;

    invoke-direct {v0, p1}, Lcom/htc/widget/ActionBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    .line 76
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    .line 77
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/widget/ActionBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->onActionBarClicked(Landroid/view/View;)V

    return-void
.end method

.method public static actionBar(Landroid/app/Activity;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    .locals 2
    .parameter "activity"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, actionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;
    instance-of v1, p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    if-eqz v1, :cond_0

    .line 59
    check-cast p0, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    .end local p0
    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method private initGestureDetector(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 514
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    .line 547
    :goto_0
    return-void

    .line 517
    :cond_0
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;

    invoke-direct {v4, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$2;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    .line 524
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 525
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 526
    .local v1, windowSize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 527
    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    const-wide v4, 0x3fc999999999999aL

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    .line 530
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$3;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v3, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;

    invoke-direct {v3, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$4;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public static isCarModeActionBarFling(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .parameter "actionBar"
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, bResult:Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 493
    :cond_0
    const-string v6, "SunnyActionBar"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "[isCarModeActionBarFling] actionBar = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    const/4 v8, 0x2

    const-string v9, ", startEvent = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p1, v7, v8

    const/4 v8, 0x4

    const-string v9, ", endEvent = "

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 509
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 497
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v2, v6

    .line 498
    .local v2, diffX:D
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v4, v6

    .line 502
    .local v4, diffY:D
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-interface {p0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->gestureRegion()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 504
    const/4 v6, 0x0

    cmpl-float v6, p4, v6

    if-lez v6, :cond_2

    .line 506
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 509
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method private onActionBarClicked(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    if-nez v0, :cond_0

    .line 477
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onActionBarFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "startEvent"
    .parameter "endEvent"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public attach(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public detach(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dismissDropList()V
    .locals 4

    .prologue
    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarDropDown;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "SunnyActionBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnyActionBar][dismissDropList]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableHTCLandscape(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 390
    const-string v0, "SunnyActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyActionBar][enableHTCLandscape]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_0
    return-void
.end method

.method public enableSearchMode(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enable"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v1, p1}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    .line 435
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getSearchContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v0

    .line 436
    .local v0, container:Lcom/htc/widget/ActionBarContainer;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 438
    .end local v0           #container:Lcom/htc/widget/ActionBarContainer;
    :cond_0
    if-eqz p2, :cond_1

    .line 439
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->switchContainer()V

    .line 440
    :cond_1
    return-void
.end method

.method public gestureRegion()D
    .locals 2

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureHeight:D

    return-wide v0
.end method

.method public getActionBarContainer()Lcom/htc/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    return-object v0
.end method

.method public getActionBarText()Lcom/htc/widget/ActionBarText;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, nHeight:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 87
    :cond_0
    return v0
.end method

.method public getVisibility()I
    .locals 4

    .prologue
    .line 188
    const/16 v0, 0x8

    .line 189
    .local v0, nVisibility:I
    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v2, v3, :cond_3

    .line 191
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v2, :cond_1

    move v1, v0

    .line 206
    .end local v0           #nVisibility:I
    .local v1, nVisibility:I
    :goto_0
    return v1

    .line 194
    .end local v1           #nVisibility:I
    .restart local v0       #nVisibility:I
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    :cond_2
    :goto_1
    move v1, v0

    .line 206
    .end local v0           #nVisibility:I
    .restart local v1       #nVisibility:I
    goto :goto_0

    .line 198
    .end local v1           #nVisibility:I
    .restart local v0       #nVisibility:I
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_4

    move v1, v0

    .line 199
    .end local v0           #nVisibility:I
    .restart local v1       #nVisibility:I
    goto :goto_0

    .line 201
    .end local v1           #nVisibility:I
    .restart local v0       #nVisibility:I
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActionBarTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public searchPane()Lcom/htc/widget/ActionBarSearch;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPaneSearch:Lcom/htc/widget/ActionBarSearch;

    return-object v0
.end method

.method public setBackUpEnabled(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    goto :goto_0
.end method

.method public setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setDropdownListContent(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setDropdownListEnabled(ZLcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;)V
    .locals 2
    .parameter "bEnable"
    .parameter "listener"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setArrowEnabled(Z)V

    .line 333
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mDropDownListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IDropDownListener;

    .line 334
    if-eqz p1, :cond_2

    .line 336
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    new-instance v1, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar$1;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    goto :goto_0

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setClickable(Z)V

    goto :goto_0
.end method

.method public setDropdownListItemListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public setGestureMonitorEnabled(ZLandroid/app/Activity;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;)V
    .locals 2
    .parameter "bEnable"
    .parameter "activity"
    .parameter "actionBarGesture"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_1

    .line 121
    :cond_0
    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mGestureListener:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$IActionBarGesture;

    .line 122
    invoke-direct {p0, p2}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->initGestureDetector(Landroid/app/Activity;)V

    .line 125
    :cond_1
    return-void
.end method

.method public setMode(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;)V
    .locals 3
    .parameter "nMode"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_STANDARD:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_2

    .line 215
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0

    .line 218
    :cond_2
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;->MODE_FULLSCREEN:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$MODE;

    if-ne v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setFullScreenEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setTransparentEnabled(Z)V

    goto :goto_0
.end method

.method public setPrimaryText(I)V
    .locals 2
    .parameter "nResId"

    .prologue
    .line 226
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_2

    .line 228
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(I)V

    goto :goto_0
.end method

.method public setPrimaryText(Ljava/lang/String;)V
    .locals 4
    .parameter "szText"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 252
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_4

    .line 254
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-eqz v0, :cond_0

    .line 273
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v3}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    goto :goto_0

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProgressVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    if-eq p1, v0, :cond_0

    .line 308
    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mProgressLoadingState:I

    .line 311
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryText(I)V
    .locals 1
    .parameter "nResId"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(I)V

    goto :goto_0
.end method

.method public setSecondaryText(Ljava/lang/String;)V
    .locals 2
    .parameter "szText"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 289
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarPane:Lcom/htc/widget/ActionBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarDropDown;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTopMargin(Landroid/app/Activity;I)V
    .locals 8
    .parameter "activity"
    .parameter "nMargin"

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 400
    .local v0, decorView:Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 402
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 404
    .local v1, nCount:I
    const/4 v2, 0x0

    .local v2, nIndex:I
    :goto_0
    if-le v1, v2, :cond_2

    .line 406
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .restart local v4       #viewGroup:Landroid/view/ViewGroup;
    if-nez v4, :cond_1

    .line 404
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    :cond_1
    instance-of v5, v4, Lcom/htc/widget/ActionBarContainer;

    if-eqz v5, :cond_0

    .line 411
    const-string v5, "SunnyActionBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[HTCAlbum][SunnyActionBar][setTopMargin]: found ActionBarContainer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_2
    if-nez v4, :cond_3

    .line 417
    const-string v5, "SunnyActionBar"

    const-string v6, "[HTCAlbum][SunnyActionBar][setTopMargin]: can not find ActionBarContainer..."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_1
    return-void

    .line 421
    :cond_3
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 422
    .local v3, param:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v5, p2, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 423
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "nVisibility"

    .prologue
    const/4 v2, 0x0

    .line 148
    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_GRID:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;->BARMODE_CAR_FOLDER:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mMode:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar$BARMODE;

    if-ne v0, v1, :cond_3

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/htc/widget/ActionBarContainer;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    .line 166
    if-nez p1, :cond_4

    .line 171
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarExt;->setShowHideAnimationEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyActionBar;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method
