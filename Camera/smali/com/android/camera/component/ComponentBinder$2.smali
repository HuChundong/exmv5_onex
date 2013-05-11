.class Lcom/android/camera/component/ComponentBinder$2;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ComponentBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ComponentBinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ComponentBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ComponentBinder$2;->this$0:Lcom/android/camera/component/ComponentBinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder$2;->this$0:Lcom/android/camera/component/ComponentBinder;

    #getter for: Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;
    invoke-static {v0}, Lcom/android/camera/component/ComponentBinder;->access$100(Lcom/android/camera/component/ComponentBinder;)Lcom/android/camera/component/Component;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/ComponentBinder$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/component/ComponentBinder$2$1;-><init>(Lcom/android/camera/component/ComponentBinder$2;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/Component;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
