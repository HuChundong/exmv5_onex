.class Lcom/android/camera/component/ComponentBinder$4;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ComponentBinder;->unbindFromSourceComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ComponentBinder;

.field final synthetic val$eventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

.field final synthetic val$propertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

.field final synthetic val$sourceComponent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/android/camera/component/ComponentBinder$BindingInfo;[Lcom/android/camera/component/ComponentBinder$BindingInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ComponentBinder$4;->this$0:Lcom/android/camera/component/ComponentBinder;

    iput-object p2, p0, Lcom/android/camera/component/ComponentBinder$4;->val$sourceComponent:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/camera/component/ComponentBinder$4;->val$eventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iput-object p4, p0, Lcom/android/camera/component/ComponentBinder$4;->val$propertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder$4;->this$0:Lcom/android/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder$4;->val$sourceComponent:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder$4;->val$eventBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    iget-object v3, p0, Lcom/android/camera/component/ComponentBinder$4;->val$propertyBindingInfo:[Lcom/android/camera/component/ComponentBinder$BindingInfo;

    #calls: Lcom/android/camera/component/ComponentBinder;->unbindFromSourceComponent(Ljava/lang/Object;[Lcom/android/camera/component/ComponentBinder$BindingInfo;[Lcom/android/camera/component/ComponentBinder$BindingInfo;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/component/ComponentBinder;->access$300(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;[Lcom/android/camera/component/ComponentBinder$BindingInfo;[Lcom/android/camera/component/ComponentBinder$BindingInfo;)V

    return-void
.end method
