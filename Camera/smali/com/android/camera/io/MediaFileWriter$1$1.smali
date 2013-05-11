.class Lcom/android/camera/io/MediaFileWriter$1$1;
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
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/io/MediaFileWriter$1;


# direct methods
.method constructor <init>(Lcom/android/camera/io/MediaFileWriter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/io/MediaFileWriter$1$1;->this$1:Lcom/android/camera/io/MediaFileWriter$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter$1$1;->this$1:Lcom/android/camera/io/MediaFileWriter$1;

    iget-object v0, v0, Lcom/android/camera/io/MediaFileWriter$1;->this$0:Lcom/android/camera/io/MediaFileWriter;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/io/MediaFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/android/camera/io/MediaFileWriter;->access$000(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method
