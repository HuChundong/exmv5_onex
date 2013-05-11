.class Lcom/android/camera/component/HdrUI$2;
.super Lcom/android/camera/trigger/Trigger;
.source "HdrUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrUI;->setupPropertyChangedCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    #getter for: Lcom/android/camera/component/HdrUI;->m_IsModeEntered:Z
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$200(Lcom/android/camera/component/HdrUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HdrUI$2;->this$0:Lcom/android/camera/component/HdrUI;

    #calls: Lcom/android/camera/component/HdrUI;->openCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$000(Lcom/android/camera/component/HdrUI;)V

    :cond_0
    return-void
.end method
