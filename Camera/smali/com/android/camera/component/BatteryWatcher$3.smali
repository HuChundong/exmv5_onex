.class Lcom/android/camera/component/BatteryWatcher$3;
.super Ljava/lang/Object;
.source "BatteryWatcher.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BatteryWatcher;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/BatteryWatcher;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BatteryWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BatteryWatcher$3;->this$0:Lcom/android/camera/component/BatteryWatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 3
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

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$3;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #getter for: Lcom/android/camera/component/BatteryWatcher;->isLowPower:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$300(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/property/Property;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/BatteryWatcher$3;->this$0:Lcom/android/camera/component/BatteryWatcher;

    #getter for: Lcom/android/camera/component/BatteryWatcher;->isLowBatteryTemperature:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/BatteryWatcher;->access$400(Lcom/android/camera/component/BatteryWatcher;)Lcom/android/camera/property/Property;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    return-void
.end method
