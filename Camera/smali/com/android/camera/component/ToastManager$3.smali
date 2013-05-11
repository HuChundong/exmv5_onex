.class Lcom/android/camera/component/ToastManager$3;
.super Lcom/android/camera/trigger/Trigger;
.source "ToastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ToastManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ToastManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ToastManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ToastManager$3;->this$0:Lcom/android/camera/component/ToastManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ToastManager$3;->this$0:Lcom/android/camera/component/ToastManager;

    iget-object v1, p0, Lcom/android/camera/component/ToastManager$3;->this$0:Lcom/android/camera/component/ToastManager;

    #getter for: Lcom/android/camera/component/ToastManager;->m_CurrentHandle:Lcom/android/camera/component/ToastManager$ToastHandle;
    invoke-static {v1}, Lcom/android/camera/component/ToastManager;->access$000(Lcom/android/camera/component/ToastManager;)Lcom/android/camera/component/ToastManager$ToastHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ToastManager;->cancelToast(Lcom/android/camera/Handle;)V

    return-void
.end method
