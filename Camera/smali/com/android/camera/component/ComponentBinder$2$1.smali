.class Lcom/android/camera/component/ComponentBinder$2$1;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ComponentBinder$2;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/ComponentBinder$2;

.field final synthetic val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

.field final synthetic val$property:Lcom/android/camera/property/Property;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ComponentBinder$2;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ComponentBinder$2$1;->this$1:Lcom/android/camera/component/ComponentBinder$2;

    iput-object p2, p0, Lcom/android/camera/component/ComponentBinder$2$1;->val$property:Lcom/android/camera/property/Property;

    iput-object p3, p0, Lcom/android/camera/component/ComponentBinder$2$1;->val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder$2$1;->this$1:Lcom/android/camera/component/ComponentBinder$2;

    iget-object v0, v0, Lcom/android/camera/component/ComponentBinder$2;->this$0:Lcom/android/camera/component/ComponentBinder;

    #getter for: Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/component/ComponentBinder;->access$000(Lcom/android/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder$2$1;->this$1:Lcom/android/camera/component/ComponentBinder$2;

    iget-object v0, v0, Lcom/android/camera/component/ComponentBinder$2;->this$0:Lcom/android/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder$2$1;->this$1:Lcom/android/camera/component/ComponentBinder$2;

    iget-object v1, v1, Lcom/android/camera/component/ComponentBinder$2;->this$0:Lcom/android/camera/component/ComponentBinder;

    #getter for: Lcom/android/camera/component/ComponentBinder;->m_SourceComponent:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/component/ComponentBinder;->access$000(Lcom/android/camera/component/ComponentBinder;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder$2$1;->val$property:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder$2$1;->val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/component/ComponentBinder;->onSourcePropertyChanged(Ljava/lang/Object;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    :cond_0
    return-void
.end method
