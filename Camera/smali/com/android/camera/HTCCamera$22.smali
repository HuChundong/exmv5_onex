.class Lcom/android/camera/HTCCamera$22;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->linkToCameraThread()V
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

    iput-object p1, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera$22;->this$0:Lcom/android/camera/HTCCamera;

    new-instance v1, Lcom/android/camera/HTCCamera$22$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/HTCCamera$22$1;-><init>(Lcom/android/camera/HTCCamera$22;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
