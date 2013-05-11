.class Lcom/android/camera/io/MediaFileWriter$1$2;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/io/MediaFileWriter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Lcom/android/camera/io/StorageSlot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/io/MediaFileWriter$1;


# direct methods
.method constructor <init>(Lcom/android/camera/io/MediaFileWriter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/io/MediaFileWriter$1$2;->this$1:Lcom/android/camera/io/MediaFileWriter$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter$1$2;->this$1:Lcom/android/camera/io/MediaFileWriter$1;

    iget-object v1, v0, Lcom/android/camera/io/MediaFileWriter$1;->this$0:Lcom/android/camera/io/MediaFileWriter;

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    #calls: Lcom/android/camera/io/MediaFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V
    invoke-static {v1, v0}, Lcom/android/camera/io/MediaFileWriter;->access$000(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/io/MediaFileWriter$1$2;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
