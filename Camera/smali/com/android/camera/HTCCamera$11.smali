.class Lcom/android/camera/HTCCamera$11;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->linkToOptionalServiceComponents()V
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
        "Lcom/android/camera/rotate/UIRotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/HTCCamera$11;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/rotate/UIRotation;

    #calls: Lcom/android/camera/HTCCamera;->onRotationChanged(Lcom/android/camera/rotate/UIRotation;)V
    invoke-static {v1, v0}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method
