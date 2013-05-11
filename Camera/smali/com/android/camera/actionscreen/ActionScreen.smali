.class public abstract Lcom/android/camera/actionscreen/ActionScreen;
.super Lcom/android/camera/component/UIComponent;
.source "ActionScreen.java"


# static fields
.field public static final CLOSE_REASON_UNKNOWN:I


# instance fields
.field public final closeReason:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/actionscreen/ActionScreenCloseReason;",
            ">;"
        }
    .end annotation
.end field

.field private m_CaptureHandle:Lcom/android/camera/CaptureHandle;

.field private m_ClosingBlockHandle:Lcom/android/camera/Handle;

.field private m_IsCaptureFailed:Z

.field private m_IsMediaSaved:Z

.field private m_IsPrepared:Z

.field private m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

.field private m_Layout:Landroid/view/View;

.field private m_LayoutID:I

.field public final state:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;I)V
    .locals 2

    const/4 v0, 0x1

    const v1, 0x7f080054

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput p3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    const-string v0, "ActionScreen.CloseReason"

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->Unknown:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-static {v0, p0, v1}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    const-string v0, "ActionScreen.State"

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-static {v0, p0, v1}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/actionscreen/ActionScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/actionscreen/ActionScreen;)Lcom/android/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/actionscreen/ActionScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/actionscreen/ActionScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/actionscreen/ActionScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/actionscreen/ActionScreen;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/actionscreen/ActionScreen;Lcom/android/camera/MediaEventArgs;)Lcom/android/camera/MediaEventArgs;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/camera/actionscreen/ActionScreen;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "close() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Action screen is already closed"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/android/camera/ICaptureUIBlockManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureUIBlockManager;

    if-eqz v0, :cond_1

    const-string v1, "Closing action screen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ICaptureUIBlockManager;->blockCaptureUI(Ljava/lang/String;I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/android/camera/Handle;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->closeActionScreen(Z)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->completeCloseActionScreen()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "close() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract closeActionScreen(Z)V
.end method

.method protected final completeCloseActionScreen()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "completeCloseActionScreen() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Action screen is not closing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/android/camera/ICaptureUIBlockManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureUIBlockManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/ICaptureUIBlockManager;->unblockCaptureUI(Lcom/android/camera/Handle;)Z

    :cond_1
    iput-object v3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_ClosingBlockHandle:Lcom/android/camera/Handle;

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    iput-object v3, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "completeCloseActionScreen() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected deinitializeOverride()V
    .locals 0

    invoke-static {p0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected final getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    return-object v0
.end method

.method public final getTargetCaptureHandle()Lcom/android/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 6

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v4, p0, Lcom/android/camera/actionscreen/ActionScreen;->closeReason:Lcom/android/camera/property/Property;

    iget-object v5, v0, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->keyDownEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/actionscreen/ActionScreen$1;

    invoke-direct {v5, p0}, Lcom/android/camera/actionscreen/ActionScreen$1;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v4, v0, Lcom/android/camera/HTCCamera;->keyUpEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/actionscreen/ActionScreen$2;

    invoke-direct {v5, p0}, Lcom/android/camera/actionscreen/ActionScreen$2;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/actionscreen/ActionScreen$3;

    invoke-direct {v2, p0}, Lcom/android/camera/actionscreen/ActionScreen$3;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    new-instance v3, Lcom/android/camera/actionscreen/ActionScreen$4;

    invoke-direct {v3, p0}, Lcom/android/camera/actionscreen/ActionScreen$4;-><init>(Lcom/android/camera/actionscreen/ActionScreen;)V

    new-instance v4, Lcom/android/camera/actionscreen/ActionScreen$5;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/android/camera/actionscreen/ActionScreen$5;-><init>(Lcom/android/camera/actionscreen/ActionScreen;Lcom/android/camera/CameraThread;Lcom/android/camera/event/EventHandler;Lcom/android/camera/event/EventHandler;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final isClosing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isMediaSaved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    return v0
.end method

.method public final isOpen()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOpening()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCaptureFailed()V
    .locals 2

    sget-object v0, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->AutoClose:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Lcom/android/camera/actionscreen/ActionScreenCloseReason;Z)V

    return-void
.end method

.method protected onKeyDown(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onKeyUp(ILcom/android/camera/input/KeyEventArgs;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V
    .locals 0

    return-void
.end method

.method public final open()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "open() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not closed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Action screen is not prepared"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->openActionScreen()V

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->state:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->onCaptureFailed()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    iget-object v0, v0, Lcom/android/camera/MediaEventArgs;->captureHandle:Lcom/android/camera/CaptureHandle;

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    invoke-virtual {p0, v0}, Lcom/android/camera/actionscreen/ActionScreen;->onMediaSaveCompleted(Lcom/android/camera/MediaEventArgs;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LatestSavedMedia:Lcom/android/camera/MediaEventArgs;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "open() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract openActionScreen()V
.end method

.method public final prepare(Lcom/android/camera/CaptureHandle;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "prepare() - Capture handle : \'"

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v4, "\'"

    invoke-static {v2, v3, v1, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - Null capture handle"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_LayoutID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/actionscreen/ActionScreen;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_Layout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iput-boolean v5, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsCaptureFailed:Z

    iput-boolean v5, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsMediaSaved:Z

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_CaptureHandle:Lcom/android/camera/CaptureHandle;

    invoke-virtual {p0, p1}, Lcom/android/camera/actionscreen/ActionScreen;->prepareActionScreen(Lcom/android/camera/CaptureHandle;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/actionscreen/ActionScreen;->m_IsPrepared:Z

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "prepare() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "null"

    goto :goto_0
.end method

.method protected abstract prepareActionScreen(Lcom/android/camera/CaptureHandle;)V
.end method
