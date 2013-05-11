.class Lcom/android/camera/HTCCamera$5;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
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

    iput-object p1, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->accelerometerValues:Lcom/android/camera/property/Property;

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
