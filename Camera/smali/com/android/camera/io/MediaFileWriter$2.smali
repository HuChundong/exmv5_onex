.class Lcom/android/camera/io/MediaFileWriter$2;
.super Ljava/lang/Object;
.source "MediaFileWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/io/MediaFileWriter;->prepare(Lcom/android/camera/io/StorageSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/io/MediaFileWriter;

.field final synthetic val$storageSlot:Lcom/android/camera/io/StorageSlot;


# direct methods
.method constructor <init>(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/io/MediaFileWriter$2;->this$0:Lcom/android/camera/io/MediaFileWriter;

    iput-object p2, p0, Lcom/android/camera/io/MediaFileWriter$2;->val$storageSlot:Lcom/android/camera/io/StorageSlot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/io/MediaFileWriter$2;->this$0:Lcom/android/camera/io/MediaFileWriter;

    iget-object v1, p0, Lcom/android/camera/io/MediaFileWriter$2;->val$storageSlot:Lcom/android/camera/io/StorageSlot;

    #calls: Lcom/android/camera/io/MediaFileWriter;->prepareInternal(Lcom/android/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/android/camera/io/MediaFileWriter;->access$100(Lcom/android/camera/io/MediaFileWriter;Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method
