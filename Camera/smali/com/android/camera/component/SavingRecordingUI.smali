.class public final Lcom/android/camera/component/SavingRecordingUI;
.super Lcom/android/camera/component/UIComponent;
.source "SavingRecordingUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SavingRecordingUI$2;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "Saving Recording UI"


# instance fields
.field private m_ProcessingDialogHandle:Lcom/android/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Saving Recording UI"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SavingRecordingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/SavingRecordingUI;->showSavingRecordingUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/SavingRecordingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/SavingRecordingUI;->hideSavingRecordingUI()V

    return-void
.end method

.method private hideSavingRecordingUI()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSavingRecordingUI()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    if-eqz v1, :cond_0

    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/SavingRecordingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->closeProcessingDialog(Lcom/android/camera/Handle;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "hideSavingRecordingUI() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/SavingRecordingUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/SavingRecordingUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SavingRecordingUI$1;-><init>(Lcom/android/camera/component/SavingRecordingUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method

.method private showSavingRecordingUI()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "showSavingRecordingUI()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/android/camera/IProcessingDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/SavingRecordingUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IProcessingDialogManager;

    if-eqz v0, :cond_0

    const v1, 0x7f0a004f

    invoke-virtual {v0, v1}, Lcom/android/camera/IProcessingDialogManager;->showProcessingDialog(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/SavingRecordingUI;->m_ProcessingDialogHandle:Lcom/android/camera/Handle;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "showSavingRecordingUI() - No IProcessingDialogManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-direct {p0}, Lcom/android/camera/component/SavingRecordingUI;->setupPropertyChangedCallbacks()V

    return-void
.end method
