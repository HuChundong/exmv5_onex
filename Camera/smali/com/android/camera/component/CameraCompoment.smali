.class public abstract Lcom/android/camera/component/CameraCompoment;
.super Lcom/android/camera/component/Component;
.source "CameraCompoment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/CameraCompoment$7;,
        Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;,
        Lcom/android/camera/component/CameraCompoment$DependencyThreadType;
    }
.end annotation


# static fields
.field private static final ROTATION_FLAG_ENABLE_FAKE_ROTATION:I = 0x2

.field private static final ROTATION_FLAG_ENABLE_ROTATION_CHANGE:I = 0x1

.field public static final UI_FADE_IN_DURATION:I = 0x190

.field public static final UI_FADE_OUT_DURATION:I = 0x190

.field public static final UI_FAKE_ROTATION_TIMEOUT:I = 0x3e8

.field public static final UI_ROTATE_DURATION:I = 0x190


# instance fields
.field private m_BaseLayout:Landroid/view/View;

.field private m_BaseLayoutID:I

.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private final m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_ContentLayout:Landroid/view/View;

.field private m_ContentLayoutID:I

.field private final m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

.field private final m_FakeRotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_InflateViewAutomatically:Z

.field private m_IsContentLayoutPrepared:Z

.field private m_Resources:Landroid/content/res/Resources;

.field private final m_RotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/PropertyChangedCallback",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field private m_RotationFlags:I

.field private m_RotationManager:Lcom/android/camera/IUIRotationManager;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
    .locals 7

    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;II)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;II)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/Component;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/CameraCompoment;->m_InflateViewAutomatically:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    new-instance v1, Lcom/android/camera/component/CameraCompoment$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraCompoment$1;-><init>(Lcom/android/camera/component/CameraCompoment;)V

    iput-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_FakeRotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    new-instance v1, Lcom/android/camera/component/CameraCompoment$2;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraCompoment$2;-><init>(Lcom/android/camera/component/CameraCompoment;)V

    iput-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    if-nez p3, :cond_0

    const-string v1, "cameraActivity"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'cameraActivity\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p4, :cond_1

    const-string v1, "cameraThread"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'cameraThread\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p3, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p4, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    iput p5, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayoutID:I

    iput p6, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayoutID:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->UIThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    iput-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    :goto_0
    return-void

    :cond_2
    if-ne v0, p4, :cond_3

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->CameraThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    iput-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->Other:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    iput-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/CameraCompoment;)Lcom/android/camera/IUIRotationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/CameraCompoment;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    return v0
.end method


# virtual methods
.method protected final collapseContentLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/CameraCompoment;->m_IsContentLayoutPrepared:Z

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_FakeRotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    :cond_0
    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    :cond_1
    iput-object v2, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    :cond_2
    iput-object v2, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    invoke-super {p0}, Lcom/android/camera/component/Component;->deinitializeOverride()V

    return-void
.end method

.method protected final disableAutoInflateView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/CameraCompoment;->m_InflateViewAutomatically:Z

    return-void
.end method

.method protected final disableFakeUIRotation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_FakeRotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    goto :goto_0
.end method

.method protected final disableUIRotationChangeNotification()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->removeChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)Z

    goto :goto_0
.end method

.method protected final enableAutoInflateView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/CameraCompoment;->m_InflateViewAutomatically:Z

    return-void
.end method

.method protected final enableFakeUIRotation()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v0, :cond_2

    const-class v0, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CameraCompoment;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableFakeUIRotation() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_FakeRotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method protected final enableUIRotationChangeNotification()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v0, :cond_2

    const-class v0, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CameraCompoment;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "enableUIRotationChangeNotification() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    goto :goto_0
.end method

.method protected final getBaseLayout()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayoutID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayoutID:I

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    return-object v0
.end method

.method protected final getCamera()Landroid/hardware/Camera;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyCameraThreadAccess()V

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method protected final getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyCameraThreadAccess()V

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraMode()Lcom/android/camera/CameraMode;
    .locals 2

    sget-object v0, Lcom/android/camera/component/CameraCompoment$7;->$SwitchMap$com$android$camera$component$CameraCompoment$DependencyThreadType:[I

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method protected final getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getCameraType()Lcom/android/camera/CameraType;
    .locals 2

    sget-object v0, Lcom/android/camera/component/CameraCompoment$7;->$SwitchMap$com$android$camera$component$CameraCompoment$DependencyThreadType:[I

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraThread:Lcom/android/camera/CameraThread;

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final getColor(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getContentLayoutID()I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayoutID:I

    return v0
.end method

.method public final getDependencyThreadType()Lcom/android/camera/component/CameraCompoment$DependencyThreadType;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    return-object v0
.end method

.method protected final getDimension(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final getFakeUIRotation()Lcom/android/camera/rotate/UIRotation;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getMainThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CameraCompoment;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_Resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method protected final getSettings()Lcom/android/camera/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    return-object v0
.end method

.method protected final getSkinnedColor(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Skin;->getColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/Skin;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected final getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getUIRotation()Lcom/android/camera/rotate/UIRotation;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/CameraCompoment;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getMainThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v1, :cond_1

    const-class v1, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/CameraCompoment;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IUIRotationManager;

    iput-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/component/Component;->initializeOverride()V

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->UIThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    const-class v0, Lcom/android/camera/IUIRotationManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CameraCompoment;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IUIRotationManager;

    iput-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "initializeOverride() - No IUIRotationManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_FakeRotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_1
    iget v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v0, v0, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/CameraCompoment;->m_InflateViewAutomatically:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getBaseLayout()Landroid/view/View;

    :cond_3
    return-void
.end method

.method protected onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    return-void
.end method

.method protected onExitingFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    return-void
.end method

.method protected onInitialized()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/component/Component;->onInitialized()V

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->fakeRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/CameraCompoment;->m_RotationManager:Lcom/android/camera/IUIRotationManager;

    iget-object v1, v1, Lcom/android/camera/IUIRotationManager;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/CameraCompoment;->onEnteringFakeUIRotation(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V

    :cond_0
    return-void
.end method

.method protected onUIRotationChanged(Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0

    return-void
.end method

.method protected final prepareContentLayout()Landroid/view/View;
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iget-boolean v4, p0, Lcom/android/camera/component/CameraCompoment;->m_IsContentLayoutPrepared:Z

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getContentLayoutID()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getBaseLayout()Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Base layout must be a ViewGroup"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v3, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayout:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/component/CameraCompoment;->m_IsContentLayoutPrepared:Z

    iget-object v3, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayout:Landroid/view/View;

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;F)V
    .locals 1

    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/component/CameraCompoment;->rotateView(Landroid/view/View;FI)V

    return-void
.end method

.method protected final rotateView(Landroid/view/View;FF)V
    .locals 1

    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/CameraCompoment;->rotateView(Landroid/view/View;FFI)V

    return-void
.end method

.method protected final rotateView(Landroid/view/View;FFI)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected final rotateView(Landroid/view/View;FI)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/component/CameraCompoment;->rotateView(Landroid/view/View;FFI)V

    :cond_0
    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/component/CameraCompoment;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V

    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;I)V
    .locals 5

    const/high16 v4, 0x43b4

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4334

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    sub-float/2addr v1, v4

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/camera/component/CameraCompoment;->rotateView(Landroid/view/View;FFI)V

    :cond_1
    return-void

    :cond_2
    sub-float/2addr v0, v4

    goto :goto_0
.end method

.method protected final rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/CameraCompoment;->rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V

    return-void
.end method

.method protected final rotateView(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/rotate/UIRotation;I)V
    .locals 5

    const/high16 v4, 0x43b4

    invoke-virtual {p3}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v2

    int-to-float v1, v2

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->getSurfaceDegrees()I

    move-result v2

    int-to-float v0, v2

    sub-float v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x4334

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    sub-float/2addr v1, v4

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/camera/component/CameraCompoment;->rotateView(Landroid/view/View;FFI)V

    return-void

    :cond_1
    sub-float/2addr v0, v4

    goto :goto_0
.end method

.method protected final setBaseLayoutId(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iput p1, p0, Lcom/android/camera/component/CameraCompoment;->m_BaseLayoutID:I

    return-void
.end method

.method protected final setContentLayoutId(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->verifyUIThreadAccess()V

    iput p1, p0, Lcom/android/camera/component/CameraCompoment;->m_ContentLayoutID:I

    return-void
.end method

.method protected showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Lcom/android/camera/component/CameraCompoment$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/camera/component/CameraCompoment$3;-><init>(Lcom/android/camera/component/CameraCompoment;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;Landroid/view/View;Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    new-instance v0, Lcom/android/camera/component/CameraCompoment$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/CameraCompoment$4;-><init>(Lcom/android/camera/component/CameraCompoment;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/component/CameraCompoment;->showAlphaRotateAnimation(Landroid/view/View;Lcom/android/camera/rotate/UIRotation;Lcom/android/camera/component/CameraCompoment$AlphaRotateAnimationCallback;)V

    return-void
.end method

.method protected showUI(Landroid/view/View;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/CameraCompoment;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    return-void
.end method

.method protected showUI(Landroid/view/View;ZILjava/lang/Runnable;)V
    .locals 5

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->threadAccessCheck()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-lez p3, :cond_2

    invoke-static {p1, v3, v4, v2, p3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance v1, Lcom/android/camera/component/CameraCompoment$5;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/component/CameraCompoment$5;-><init>(Lcom/android/camera/component/CameraCompoment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-lez p3, :cond_4

    invoke-static {p1, v4, v3, v2, p3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance v1, Lcom/android/camera/component/CameraCompoment$6;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/component/CameraCompoment$6;-><init>(Lcom/android/camera/component/CameraCompoment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected showUI(Landroid/view/View;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/component/CameraCompoment;->showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V

    return-void
.end method

.method protected showUI(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0x190

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/camera/component/CameraCompoment;->showUI(Landroid/view/View;ZILjava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final verifyCameraThreadAccess()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->CameraThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "The method can only be accessed by camera thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final verifyUIThreadAccess()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/CameraCompoment;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/component/CameraCompoment;->m_DependencyThreadType:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    sget-object v1, Lcom/android/camera/component/CameraCompoment$DependencyThreadType;->UIThread:Lcom/android/camera/component/CameraCompoment$DependencyThreadType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "The method can only be accessed by UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
