.class Lcom/android/camera/HTCCamera$21$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera$21;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/HTCCamera$21;

.field final synthetic val$e:Lcom/android/camera/event/EventArgs;

.field final synthetic val$event:Lcom/android/camera/event/Event;

.field final synthetic val$sender:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera$21;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$21$1;->this$1:Lcom/android/camera/HTCCamera$21;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$21$1;->val$event:Lcom/android/camera/event/Event;

    iput-object p3, p0, Lcom/android/camera/HTCCamera$21$1;->val$sender:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/camera/HTCCamera$21$1;->val$e:Lcom/android/camera/event/EventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/HTCCamera$21$1;->this$1:Lcom/android/camera/HTCCamera$21;

    iget-object v0, v0, Lcom/android/camera/HTCCamera$21;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$21$1;->val$event:Lcom/android/camera/event/Event;

    iget-object v2, p0, Lcom/android/camera/HTCCamera$21$1;->val$sender:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/HTCCamera$21$1;->val$e:Lcom/android/camera/event/EventArgs;

    #calls: Lcom/android/camera/HTCCamera;->onCameraThreadEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method
