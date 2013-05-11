.class Lcom/android/camera/CameraThread$18;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$slot:Lcom/android/camera/io/StorageSlot;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$18;->this$0:Lcom/android/camera/CameraThread;

    iput-object p2, p0, Lcom/android/camera/CameraThread$18;->val$slot:Lcom/android/camera/io/StorageSlot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread$18;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$18;->val$slot:Lcom/android/camera/io/StorageSlot;

    #calls: Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V
    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method
