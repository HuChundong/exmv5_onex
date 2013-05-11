.class Lcom/android/camera/component/IntentReceiver$3;
.super Lcom/android/camera/trigger/Trigger;
.source "IntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IntentReceiver;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IntentReceiver$3;->this$0:Lcom/android/camera/component/IntentReceiver;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IntentReceiver$3;->this$0:Lcom/android/camera/component/IntentReceiver;

    #getter for: Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z
    invoke-static {v0}, Lcom/android/camera/component/IntentReceiver;->access$200(Lcom/android/camera/component/IntentReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/IntentReceiver$3;->this$0:Lcom/android/camera/component/IntentReceiver;

    invoke-virtual {v0}, Lcom/android/camera/component/IntentReceiver;->unregisterReceiver()V

    :cond_0
    return-void
.end method
