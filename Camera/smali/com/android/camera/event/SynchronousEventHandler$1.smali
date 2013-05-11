.class Lcom/android/camera/event/SynchronousEventHandler$1;
.super Ljava/lang/Object;
.source "SynchronousEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/event/SynchronousEventHandler;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/event/SynchronousEventHandler;

.field final synthetic val$e:Lcom/android/camera/event/EventArgs;

.field final synthetic val$event:Lcom/android/camera/event/Event;

.field final synthetic val$sender:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/event/SynchronousEventHandler;Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->this$0:Lcom/android/camera/event/SynchronousEventHandler;

    iput-object p2, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->val$event:Lcom/android/camera/event/Event;

    iput-object p3, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->val$sender:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->val$e:Lcom/android/camera/event/EventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->this$0:Lcom/android/camera/event/SynchronousEventHandler;

    iget-object v1, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->val$event:Lcom/android/camera/event/Event;

    iget-object v2, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->val$sender:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/event/SynchronousEventHandler$1;->val$e:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/event/SynchronousEventHandler;->onEventReceivedSync(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method
