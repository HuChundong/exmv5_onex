.class Lcom/android/camera/component/ToastManager$4;
.super Ljava/lang/Object;
.source "ToastManager.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ToastManager;->initializeOverride()V
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
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ToastManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ToastManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

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
            "Lcom/android/camera/rotate/UIRotation;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

    #getter for: Lcom/android/camera/component/ToastManager;->m_Toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/camera/component/ToastManager;->access$100(Lcom/android/camera/component/ToastManager;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

    #getter for: Lcom/android/camera/component/ToastManager;->m_IsToastTimeout:Z
    invoke-static {v0}, Lcom/android/camera/component/ToastManager;->access$200(Lcom/android/camera/component/ToastManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

    #getter for: Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/android/camera/component/ToastManager;->access$000(Lcom/android/camera/component/ToastManager;)Lcom/android/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ToastManager;->cancelToast(Lcom/android/camera/Handle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

    #getter for: Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;
    invoke-static {v0}, Lcom/android/camera/component/ToastManager;->access$000(Lcom/android/camera/component/ToastManager;)Lcom/android/camera/component/ToastManager$ToastHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager$4;->this$0:Lcom/android/camera/component/ToastManager;

    #getter for: Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/android/camera/component/ToastManager;->access$000(Lcom/android/camera/component/ToastManager;)Lcom/android/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    #calls: Lcom/android/camera/component/ToastManager;->showToast(Lcom/android/camera/component/ToastManager$ToastHandle;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ToastManager;->access$300(Lcom/android/camera/component/ToastManager;Lcom/android/camera/component/ToastManager$ToastHandle;)V

    goto :goto_0
.end method
