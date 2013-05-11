.class Lcom/android/camera/component/ComponentBinder$3;
.super Ljava/lang/Object;
.source "ComponentBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ComponentBinder;

.field final synthetic val$sourceComponent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ComponentBinder$3;->this$0:Lcom/android/camera/component/ComponentBinder;

    iput-object p2, p0, Lcom/android/camera/component/ComponentBinder$3;->val$sourceComponent:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/ComponentBinder$3;->this$0:Lcom/android/camera/component/ComponentBinder;

    iget-object v1, p0, Lcom/android/camera/component/ComponentBinder$3;->val$sourceComponent:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/camera/component/ComponentBinder$3;->this$0:Lcom/android/camera/component/ComponentBinder;

    #getter for: Lcom/android/camera/component/ComponentBinder;->m_TargetComponent:Lcom/android/camera/component/Component;
    invoke-static {v2}, Lcom/android/camera/component/ComponentBinder;->access$100(Lcom/android/camera/component/ComponentBinder;)Lcom/android/camera/component/Component;

    move-result-object v2

    #calls: Lcom/android/camera/component/ComponentBinder;->bindToSourceComponent(Ljava/lang/Object;Lcom/android/camera/component/Component;)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/component/ComponentBinder;->access$200(Lcom/android/camera/component/ComponentBinder;Ljava/lang/Object;Lcom/android/camera/component/Component;)V

    return-void
.end method
