.class Landroid/webkit/GeolocationPermissionsClassic$1;
.super Landroid/os/Handler;
.source "GeolocationPermissionsClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/GeolocationPermissionsClassic;->createUIHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/GeolocationPermissionsClassic;


# direct methods
.method constructor <init>(Landroid/webkit/GeolocationPermissionsClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Landroid/webkit/GeolocationPermissionsClassic$1;->this$0:Landroid/webkit/GeolocationPermissionsClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 73
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    .line 76
    .local v4, values:Ljava/util/Map;
    const-string/jumbo v5, "origins"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 77
    .local v3, origins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "callback"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/ValueCallback;

    .line 78
    .local v2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    .end local v2           #callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3           #origins:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #values:Ljava/util/Map;
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    .line 82
    .restart local v4       #values:Ljava/util/Map;
    const-string v5, "allowed"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 83
    .local v0, allowed:Ljava/lang/Boolean;
    const-string v5, "callback"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ValueCallback;

    .line 84
    .local v1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
