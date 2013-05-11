.class Landroid/net/wifi/WifiStateMachine$10;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->updateV6AddressesWithAnotherThread(Landroid/net/LinkProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;

.field final synthetic val$linkProperties:Landroid/net/LinkProperties;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4122
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$10;->val$linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4124
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$10;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$10;->val$linkProperties:Landroid/net/LinkProperties;

    #calls: Landroid/net/wifi/WifiStateMachine;->updateV6Addresses(Landroid/net/LinkProperties;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$1500(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V

    .line 4125
    return-void
.end method
