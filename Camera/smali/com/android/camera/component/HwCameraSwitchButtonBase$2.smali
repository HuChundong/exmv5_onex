.class Lcom/android/camera/component/HwCameraSwitchButtonBase$2;
.super Ljava/lang/Object;
.source "HwCameraSwitchButtonBase.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HwCameraSwitchButtonBase;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    invoke-virtual {v0}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    #getter for: Lcom/android/camera/component/HwCameraSwitchButtonBase;->mButtonStateReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->access$400(Lcom/android/camera/component/HwCameraSwitchButtonBase;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/component/HwCameraSwitchButtonBase;->m_IsReceiverRegistered:Z
    invoke-static {v0, v1}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->access$502(Lcom/android/camera/component/HwCameraSwitchButtonBase;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    #calls: Lcom/android/camera/component/HwCameraSwitchButtonBase;->registerReceivers()V
    invoke-static {v0}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->access$600(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V

    goto :goto_0
.end method
