.class Lcom/android/camera/component/PowerSavingManager$2;
.super Ljava/lang/Object;
.source "PowerSavingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PowerSavingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerSavingManager;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerSavingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PowerSavingManager$2;->this$0:Lcom/android/camera/component/PowerSavingManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerSavingManager$2;->this$0:Lcom/android/camera/component/PowerSavingManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    #calls: Lcom/android/camera/component/PowerSavingManager;->onPSensorValueChanged([F)V
    invoke-static {v0, v1}, Lcom/android/camera/component/PowerSavingManager;->access$300(Lcom/android/camera/component/PowerSavingManager;[F)V

    :cond_0
    return-void
.end method
