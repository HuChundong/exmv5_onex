.class Lcom/android/camera/component/ZoomBar$6;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$6;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$6;->this$0:Lcom/android/camera/component/ZoomBar;

    #calls: Lcom/android/camera/component/ZoomBar;->showZoomBar()V
    invoke-static {v0}, Lcom/android/camera/component/ZoomBar;->access$600(Lcom/android/camera/component/ZoomBar;)V

    :cond_0
    return-void
.end method
