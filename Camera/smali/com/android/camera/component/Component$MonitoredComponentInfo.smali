.class Lcom/android/camera/component/Component$MonitoredComponentInfo;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MonitoredComponentInfo"
.end annotation


# instance fields
.field public component:Lcom/android/camera/component/Component;

.field public final componentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/android/camera/component/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/android/camera/component/Component;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/component/Component$MonitoredComponentInfo;->componentClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/camera/component/Component$MonitoredComponentInfo;->component:Lcom/android/camera/component/Component;

    return-void
.end method
