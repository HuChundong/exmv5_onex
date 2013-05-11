.class public Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;
.implements Landroid/view/HtcIfWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$CompatModeWrapper;
    }
.end annotation


# static fields
.field public static final ADD_APP_EXITING:I = -0x4

.field public static final ADD_BAD_APP_TOKEN:I = -0x1

.field public static final ADD_BAD_SUBWINDOW_TOKEN:I = -0x2

.field public static final ADD_DUPLICATE_ADD:I = -0x5

.field public static final ADD_FLAG_APP_VISIBLE:I = 0x2

.field public static final ADD_FLAG_IN_TOUCH_MODE:I = 0x1

.field public static final ADD_MULTIPLE_SINGLETON:I = -0x7

.field public static final ADD_NOT_APP_TOKEN:I = -0x3

.field public static final ADD_OKAY:I = 0x0

.field public static final ADD_PERMISSION_DENIED:I = -0x8

.field public static final ADD_STARTING_NOT_NEEDED:I = -0x6

.field public static final RELAYOUT_DEFER_SURFACE_DESTROY:I = 0x2

.field public static final RELAYOUT_INSETS_PENDING:I = 0x1

.field public static final RELAYOUT_RES_ANIMATING:I = 0x8

.field public static final RELAYOUT_RES_FIRST_TIME:I = 0x2

.field public static final RELAYOUT_RES_IN_TOUCH_MODE:I = 0x1

.field public static final RELAYOUT_RES_SURFACE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sCompatWindowManagers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sWindowManager:Landroid/view/WindowManagerImpl;


# instance fields
.field private mNeedsEglTerminate:Z

.field private mParams:[Landroid/view/WindowManager$LayoutParams;

.field private mRoots:[Landroid/view/ViewRootImpl;

.field private mSystemPropertyUpdater:Ljava/lang/Runnable;

.field private mViews:[Landroid/view/View;

.field private mWindowService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-direct {v0}, Landroid/view/WindowManagerImpl;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 138
    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 144
    return-void
.end method

.method static synthetic access$000(Landroid/view/WindowManagerImpl;)[Landroid/view/ViewRootImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method private addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V
    .locals 11
    .parameter "view"
    .parameter "params"
    .parameter "cih"
    .parameter "nest"

    .prologue
    const/4 v0, 0x0

    .line 358
    instance-of v7, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v7, :cond_0

    .line 359
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Params must be WindowManager.LayoutParams"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v6, p2

    .line 363
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 367
    .local v6, wparams:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    .line 369
    .local v4, panelParentView:Landroid/view/View;
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    if-nez v7, :cond_1

    .line 372
    new-instance v7, Landroid/view/WindowManagerImpl$1;

    invoke-direct {v7, p0}, Landroid/view/WindowManagerImpl$1;-><init>(Landroid/view/WindowManagerImpl;)V

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    .line 383
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mSystemPropertyUpdater:Ljava/lang/Runnable;

    invoke-static {v7}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 393
    :cond_1
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 394
    .local v2, index:I
    if-ltz v2, :cond_3

    .line 395
    if-nez p4, :cond_2

    .line 396
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has already been added to the window manager."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 451
    .end local v2           #index:I
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 399
    .restart local v2       #index:I
    :cond_2
    :try_start_1
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v5, v7, v2

    .line 400
    .local v5, root:Landroid/view/ViewRootImpl;
    iget v7, v5, Landroid/view/ViewRootImpl;->mAddNesting:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 402
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 404
    monitor-exit p0

    .line 454
    :goto_0
    return-void

    .line 409
    .end local v5           #root:Landroid/view/ViewRootImpl;
    :cond_3
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x3e8

    if-lt v7, v8, :cond_6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7cf

    if-gt v7, v8, :cond_6

    .line 411
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v7

    .line 412
    .local v0, count:I
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 413
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v7, v7, v1

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v7}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v7, v8, :cond_5

    .line 414
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v4, v7, v1

    .line 412
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 419
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_6
    new-instance v5, Landroid/view/ViewRootImpl;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;)V

    .line 420
    .restart local v5       #root:Landroid/view/ViewRootImpl;
    const/4 v7, 0x1

    iput v7, v5, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 421
    if-nez p3, :cond_7

    .line 422
    new-instance v7, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v7}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    iput-object v7, v5, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 427
    :goto_2
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v7, :cond_8

    .line 430
    const/4 v2, 0x1

    .line 431
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/View;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 432
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/ViewRootImpl;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 433
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/WindowManager$LayoutParams;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 446
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 448
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aput-object p1, v7, v2

    .line 449
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aput-object v5, v7, v2

    .line 450
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v6, v7, v2

    .line 451
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    invoke-virtual {v5, p1, v6, v4}, Landroid/view/ViewRootImpl;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V

    goto :goto_0

    .line 424
    :cond_7
    :try_start_2
    iput-object p3, v5, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    goto :goto_2

    .line 435
    :cond_8
    iget-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v7, v7

    add-int/lit8 v2, v7, 0x1

    .line 436
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 437
    .local v3, old:[Ljava/lang/Object;
    new-array v7, v2, [Landroid/view/View;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 438
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 440
    new-array v7, v2, [Landroid/view/ViewRootImpl;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 441
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 443
    new-array v7, v2, [Landroid/view/WindowManager$LayoutParams;

    iput-object v7, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 444
    const/4 v7, 0x0

    iget-object v8, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x0

    add-int/lit8 v10, v2, -0x1

    invoke-static {v3, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private findViewLocked(Landroid/view/View;Z)I
    .locals 4
    .parameter "view"
    .parameter "required"

    .prologue
    .line 776
    monitor-enter p0

    .line 777
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 778
    .local v0, count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 779
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 780
    monitor-exit p0

    .line 787
    .end local v1           #i:I
    :goto_2
    return v1

    .line 777
    .end local v0           #count:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 778
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 783
    :cond_2
    if-eqz p2, :cond_3

    .line 784
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "View not attached to window manager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 788
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 787
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_3
    const/4 v1, -0x1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static getDefault(Landroid/content/res/CompatibilityInfo;)Landroid/view/WindowManager;
    .locals 4
    .parameter "compatInfo"

    .prologue
    .line 312
    new-instance v0, Landroid/view/CompatibilityInfoHolder;

    invoke-direct {v0}, Landroid/view/CompatibilityInfoHolder;-><init>()V

    .line 313
    .local v0, cih:Landroid/view/CompatibilityInfoHolder;
    invoke-virtual {v0, p0}, Landroid/view/CompatibilityInfoHolder;->set(Landroid/content/res/CompatibilityInfo;)V

    .line 314
    invoke-virtual {v0}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 315
    sget-object v1, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    .line 329
    :goto_0
    return-object v1

    .line 318
    :cond_0
    sget-object v3, Landroid/view/WindowManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 324
    :try_start_0
    sget-object v2, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 325
    .local v1, wm:Landroid/view/WindowManager;
    if-nez v1, :cond_1

    .line 326
    new-instance v1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    .end local v1           #wm:Landroid/view/WindowManager;
    sget-object v2, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v1, v2, v0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    .line 327
    .restart local v1       #wm:Landroid/view/WindowManager;
    sget-object v2, Landroid/view/WindowManagerImpl;->sCompatWindowManagers:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 330
    .end local v1           #wm:Landroid/view/WindowManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getDefault(Landroid/view/CompatibilityInfoHolder;)Landroid/view/WindowManager;
    .locals 2
    .parameter "compatInfo"

    .prologue
    .line 334
    new-instance v0, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    sget-object v1, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    invoke-direct {v0, v1, p0}, Landroid/view/WindowManagerImpl$CompatModeWrapper;-><init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public static getDefault()Landroid/view/WindowManagerImpl;
    .locals 1

    .prologue
    .line 308
    sget-object v0, Landroid/view/WindowManagerImpl;->sWindowManager:Landroid/view/WindowManagerImpl;

    return-object v0
.end method

.method private getIWM()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 796
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method private static getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 2
    .parameter "root"

    .prologue
    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 2
    .parameter "dst"
    .parameter "src"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 765
    array-length v0, p0

    if-lez v0, :cond_1

    .line 766
    if-lez p2, :cond_0

    .line 767
    invoke-static {p1, v1, p0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    :cond_0
    array-length v0, p0

    if-ge p2, v0, :cond_1

    .line 770
    add-int/lit8 v0, p2, 0x1

    array-length v1, p1

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, p0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 773
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 342
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 347
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 348
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;)V
    .locals 1
    .parameter "view"
    .parameter "params"
    .parameter "cih"

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;Z)V

    .line 352
    return-void
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "token"
    .parameter "type"

    .prologue
    .line 817
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 818
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 821
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWindowToken, token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "addWindowToken [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public closeAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 757
    invoke-virtual {p0, v0, v0, v0}, Landroid/view/WindowManagerImpl;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "token"
    .parameter "who"
    .parameter "what"

    .prologue
    .line 559
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v4, :cond_0

    .line 561
    monitor-exit p0

    .line 587
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 565
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 568
    if-eqz p1, :cond_1

    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v4, p1, :cond_3

    .line 569
    :cond_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v1

    .line 570
    .local v3, root:Landroid/view/ViewRootImpl;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 573
    if-eqz p2, :cond_2

    .line 574
    new-instance v2, Landroid/view/WindowLeaked;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has leaked window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that was originally added here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    .line 577
    .local v2, leak:Landroid/view/WindowLeaked;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getLocation()Landroid/view/WindowLeaked;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowLeaked;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowLeaked;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 578
    const-string v4, "WindowManager"

    invoke-virtual {v2}, Landroid/view/WindowLeaked;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    .end local v2           #leak:Landroid/view/WindowLeaked;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    .line 582
    add-int/lit8 v1, v1, -0x1

    .line 583
    add-int/lit8 v0, v0, -0x1

    .line 565
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 586
    :cond_4
    monitor-exit p0

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;)V
    .locals 16
    .parameter "fd"

    .prologue
    .line 653
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 654
    .local v3, fout:Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 656
    .local v7, pw:Ljava/io/PrintWriter;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 657
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-eqz v11, :cond_4

    .line 658
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v1, v11

    .line 660
    .local v1, count:I
    const-string v11, "Profile data in ms:"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 663
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v9, v11, v4

    .line 664
    .local v9, root:Landroid/view/ViewRootImpl;
    invoke-static {v9}, Landroid/view/WindowManagerImpl;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 665
    .local v6, name:Ljava/lang/String;
    const-string v11, "\n\t%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    invoke-virtual {v7, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 667
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 668
    .local v8, renderer:Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_0

    .line 669
    invoke-virtual {v8, v7}, Landroid/view/HardwareRenderer;->dumpGfxInfo(Ljava/io/PrintWriter;)V

    .line 662
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #renderer:Landroid/view/HardwareRenderer;
    .end local v9           #root:Landroid/view/ViewRootImpl;
    :cond_1
    const-string v11, "\nView hierarchy:\n"

    invoke-virtual {v7, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    const/4 v10, 0x0

    .line 676
    .local v10, viewsCount:I
    const/4 v2, 0x0

    .line 677
    .local v2, displayListsSize:I
    const/4 v11, 0x2

    new-array v5, v11, [I

    .line 679
    .local v5, info:[I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    .line 680
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v9, v11, v4

    .line 681
    .restart local v9       #root:Landroid/view/ViewRootImpl;
    invoke-virtual {v9, v5}, Landroid/view/ViewRootImpl;->dumpGfxInfo([I)V

    .line 683
    invoke-static {v9}, Landroid/view/WindowManagerImpl;->getWindowName(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v6

    .line 684
    .restart local v6       #name:Ljava/lang/String;
    const-string v11, "  %s\n  %d views, %.2f kB of display lists"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget v14, v5, v14

    int-to-float v14, v14

    const/high16 v15, 0x4480

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v7, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 686
    invoke-virtual {v9}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v11, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 687
    .restart local v8       #renderer:Landroid/view/HardwareRenderer;
    if-eqz v8, :cond_2

    .line 688
    const-string v11, ", %d frames rendered"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->getFrameCount()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v7, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 690
    :cond_2
    const-string v11, "\n\n"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v7, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 692
    const/4 v11, 0x0

    aget v11, v5, v11

    add-int/2addr v10, v11

    .line 693
    const/4 v11, 0x1

    aget v11, v5, v11

    add-int/2addr v2, v11

    .line 679
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 696
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #renderer:Landroid/view/HardwareRenderer;
    .end local v9           #root:Landroid/view/ViewRootImpl;
    :cond_3
    const-string v11, "\nTotal ViewRootImpl: %d\n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v7, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 697
    const-string v11, "Total Views:        %d\n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v7, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 698
    const-string v11, "Total DisplayList:  %.2f kB\n\n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    int-to-float v14, v2

    const/high16 v15, 0x4480

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v7, v11, v12}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 700
    .end local v1           #count:I
    .end local v2           #displayListsSize:I
    .end local v4           #i:I
    .end local v5           #info:[I
    .end local v10           #viewsCount:I
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 704
    return-void

    .line 700
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 702
    :catchall_1
    move-exception v11

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    throw v11
.end method

.method public endTrimMemory()V
    .locals 1

    .prologue
    .line 628
    invoke-static {}, Landroid/view/HardwareRenderer;->endTrimMemory()V

    .line 630
    iget-boolean v0, p0, Landroid/view/WindowManagerImpl;->mNeedsEglTerminate:Z

    if-eqz v0, :cond_0

    .line 631
    invoke-static {}, Landroid/opengl/ManagedEGLContext;->doTerminate()Z

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowManagerImpl;->mNeedsEglTerminate:Z

    .line 634
    :cond_0
    return-void
.end method

.method finishRemoveViewLocked(Landroid/view/View;I)V
    .locals 5
    .parameter "view"
    .parameter "index"

    .prologue
    .line 535
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v4

    .line 538
    .local v0, count:I
    add-int/lit8 v4, v0, -0x1

    new-array v3, v4, [Landroid/view/View;

    .line 539
    .local v3, tmpViews:[Landroid/view/View;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    invoke-static {v3, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 540
    iput-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    .line 542
    add-int/lit8 v4, v0, -0x1

    new-array v2, v4, [Landroid/view/ViewRootImpl;

    .line 543
    .local v2, tmpRoots:[Landroid/view/ViewRootImpl;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    invoke-static {v2, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 544
    iput-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    .line 546
    add-int/lit8 v4, v0, -0x1

    new-array v1, v4, [Landroid/view/WindowManager$LayoutParams;

    .line 548
    .local v1, tmpParams:[Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1, v4, p2}, Landroid/view/WindowManagerImpl;->removeItem([Ljava/lang/Object;[Ljava/lang/Object;I)V

    .line 549
    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    .line 551
    if-eqz p1, :cond_0

    .line 552
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 556
    :cond_0
    return-void
.end method

.method public getAnimationScales()[F
    .locals 3

    .prologue
    .line 829
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 830
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 833
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string v2, "getAnimationScales"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getAnimationScales()[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 839
    :goto_0
    return-object v1

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "getAnimationScales [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 3

    .prologue
    .line 761
    new-instance v0, Landroid/view/Display;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/Display;-><init>(ILandroid/view/CompatibilityInfoHolder;)V

    return-object v0
.end method

.method public getRootViewLayoutParameter(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .locals 6
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 738
    .local v2, vp:Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_0

    instance-of v5, v2, Landroid/view/ViewRootImpl;

    if-nez v5, :cond_0

    .line 739
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    .line 742
    :cond_0
    if-nez v2, :cond_2

    .line 753
    :cond_1
    :goto_1
    return-object v4

    :cond_2
    move-object v3, v2

    .line 744
    check-cast v3, Landroid/view/ViewRootImpl;

    .line 746
    .local v3, vr:Landroid/view/ViewRootImpl;
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    array-length v0, v5

    .line 747
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 748
    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v5, v5, v1

    if-ne v5, v3, :cond_3

    .line 749
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v4, v4, v1

    goto :goto_1

    .line 747
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public getRotation()I
    .locals 3

    .prologue
    .line 879
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 880
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 883
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string v2, "getRotation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getRotation()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 889
    :goto_0
    return v1

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "getRotation [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSwitchState(I)I
    .locals 2
    .parameter "sw"

    .prologue
    .line 906
    const-string v0, "WindowManager"

    const-string v1, "getSwichState has been removed..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 2
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 938
    const-string v0, "WindowManager"

    const-string v1, "injectKeyEvent has been removed..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    return v0
.end method

.method public keyguardIsShowing()Z
    .locals 3

    .prologue
    .line 945
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 946
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 949
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string v2, "keyguardIsShowing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 955
    :goto_0
    return v1

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string v2, "keyguardIsShowing [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 475
    monitor-enter p0

    .line 476
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v1

    .line 477
    .local v1, index:I
    invoke-virtual {p0, v1}, Landroid/view/WindowManagerImpl;->removeViewLocked(I)Landroid/view/View;

    move-result-object v0

    .line 478
    .local v0, curView:Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 479
    monitor-exit p0

    return-void

    .line 482
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling with view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but the ViewAncestor is attached to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    .end local v0           #curView:Landroid/view/View;
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 488
    monitor-enter p0

    .line 489
    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, p1, v4}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v2

    .line 490
    .local v2, index:I
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v2

    .line 491
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, curView:Landroid/view/View;
    const/4 v4, 0x0

    iput v4, v3, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 495
    if-eqz p1, :cond_0

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 497
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 498
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 502
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 503
    invoke-virtual {p0, v0, v2}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    .line 504
    if-ne v0, p1, :cond_1

    .line 505
    monitor-exit p0

    return-void

    .line 508
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calling with view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but the ViewAncestor is attached to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 510
    .end local v0           #curView:Landroid/view/View;
    .end local v2           #index:I
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method removeViewLocked(I)Landroid/view/View;
    .locals 4
    .parameter "index"

    .prologue
    .line 514
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, p1

    .line 515
    .local v1, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .line 518
    .local v2, view:Landroid/view/View;
    iget v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    .line 519
    iget v3, v1, Landroid/view/ViewRootImpl;->mAddNesting:I

    if-lez v3, :cond_0

    .line 531
    :goto_0
    return-object v2

    .line 523
    :cond_0
    if-eqz v2, :cond_1

    .line 524
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 525
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 526
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    .line 529
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewRootImpl;->die(Z)V

    .line 530
    invoke-virtual {p0, v2, p1}, Landroid/view/WindowManagerImpl;->finishRemoveViewLocked(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 4
    .parameter "token"

    .prologue
    .line 843
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 844
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 847
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeWindowToken, token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    return-void

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "removeWindowToken [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportNewConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    .line 726
    monitor-enter p0

    .line 727
    :try_start_0
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v1, v4

    .line 728
    .local v1, count:I
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    .end local p1
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 730
    :try_start_1
    iget-object v4, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v3, v4, v2

    .line 731
    .local v3, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->requestUpdateConfiguration(Landroid/content/res/Configuration;)V

    .line 729
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    .end local v3           #root:Landroid/view/ViewRootImpl;
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 734
    return-void

    .line 733
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #count:I
    .end local v2           #i:I
    .restart local p1
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local p1
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :catchall_1
    move-exception v4

    move-object p1, v0

    .end local v0           #config:Landroid/content/res/Configuration;
    .restart local p1
    goto :goto_1
.end method

.method public setAnimationScales([F)V
    .locals 3
    .parameter "scales"

    .prologue
    .line 855
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 856
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 859
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setAnimationScales"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setAnimationScales [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 802
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 803
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 806
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 807
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPenSetting, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_1
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setPenSetting [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPointerSpeed(I)V
    .locals 2
    .parameter "speed"

    .prologue
    .line 923
    const-string v0, "WindowManager"

    const-string/jumbo v1, "setPointerSpeed has been removed..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void
.end method

.method public setShowKeyguard(Z)V
    .locals 4
    .parameter "showLockScreen"

    .prologue
    .line 959
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 960
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 963
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShowKeyguard, showLockScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setShowKeyguard(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_0
    return-void

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setShowKeyguard [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStatusBarTouchMode(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    .line 867
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 868
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 871
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStatusBarTouchMode, bEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->setStatusBarTouchMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "setStatusBarTouchMode [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStoppedState(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "token"
    .parameter "stopped"

    .prologue
    .line 712
    monitor-enter p0

    .line 713
    :try_start_0
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v3, :cond_0

    .line 714
    monitor-exit p0

    .line 723
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v3

    .line 716
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 717
    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-ne v3, p1, :cond_2

    .line 718
    :cond_1
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v3, v1

    .line 719
    .local v2, root:Landroid/view/ViewRootImpl;
    invoke-virtual {v2, p2}, Landroid/view/ViewRootImpl;->setStopped(Z)V

    .line 716
    .end local v2           #root:Landroid/view/ViewRootImpl;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 722
    :cond_3
    monitor-exit p0

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setWindowCrop(Landroid/view/View;IIII)V
    .locals 8
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 986
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 989
    .local v7, surface:Landroid/view/Surface;
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    .line 990
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWindowCrop, surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_2
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v0, :cond_3

    .line 993
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 995
    :cond_3
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-virtual {v7}, Landroid/view/Surface;->getSurfaceIdentity()I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowManager;->setSurfaceCrop(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v6

    .line 997
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWindowCrop, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showKeyguardWithAnimation(Z)V
    .locals 4
    .parameter "showLockScreen"

    .prologue
    .line 971
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    if-nez v1, :cond_0

    .line 972
    invoke-direct {p0}, Landroid/view/WindowManagerImpl;->getIWM()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    .line 975
    :cond_0
    :try_start_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showKeyguardWithAnimation, showLockScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowService:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->showKeyguardWithAnimation(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    const-string/jumbo v2, "showKeyguardWithAnimation [Exception]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startTrimMemory(I)V
    .locals 4
    .parameter "level"

    .prologue
    const/16 v3, 0x50

    .line 595
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 598
    if-ge p1, v3, :cond_0

    const/16 v2, 0x55

    if-ge p1, v2, :cond_0

    const/16 v2, 0x3c

    if-lt p1, v2, :cond_4

    invoke-virtual {p0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 607
    :cond_0
    monitor-enter p0

    .line 608
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v2, :cond_2

    monitor-exit p0

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 610
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 611
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->terminateHardwareResources()V

    .line 610
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/WindowManagerImpl;->mNeedsEglTerminate:Z

    .line 616
    invoke-static {v3}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    goto :goto_0

    .line 613
    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 620
    :cond_4
    invoke-static {p1}, Landroid/view/HardwareRenderer;->startTrimMemory(I)V

    goto :goto_0
.end method

.method public trimLocalMemory()V
    .locals 3

    .prologue
    .line 640
    monitor-enter p0

    .line 641
    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    if-nez v2, :cond_0

    monitor-exit p0

    .line 647
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mViews:[Landroid/view/View;

    array-length v0, v2

    .line 643
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 644
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->destroyHardwareLayers()V

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 646
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "view"
    .parameter "params"

    .prologue
    .line 457
    instance-of v3, p2, Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_0

    .line 458
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Params must be WindowManager.LayoutParams"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v2, p2

    .line 461
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 464
    .local v2, wparams:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    monitor-enter p0

    .line 467
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Landroid/view/WindowManagerImpl;->findViewLocked(Landroid/view/View;Z)I

    move-result v0

    .line 468
    .local v0, index:I
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mRoots:[Landroid/view/ViewRootImpl;

    aget-object v1, v3, v0

    .line 469
    .local v1, root:Landroid/view/ViewRootImpl;
    iget-object v3, p0, Landroid/view/WindowManagerImpl;->mParams:[Landroid/view/WindowManager$LayoutParams;

    aput-object v2, v3, v0

    .line 470
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 471
    monitor-exit p0

    .line 472
    return-void

    .line 471
    .end local v0           #index:I
    .end local v1           #root:Landroid/view/ViewRootImpl;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
