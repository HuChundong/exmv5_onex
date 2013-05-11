.class Lcom/android/camera/HTCCamera$18;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->QueryToggleStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$18;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$2600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->storageSlot:Lcom/android/camera/property/Property;

    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    goto :goto_0
.end method
