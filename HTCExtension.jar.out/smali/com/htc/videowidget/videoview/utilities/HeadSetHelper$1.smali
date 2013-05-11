.class Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$1;
.super Ljava/lang/Object;
.source "HeadSetHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 76
    const-string v0, "HeadSetHelper"

    const-string v1, "[BluetoothAdapterListener.onServiceConnected]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$002(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 78
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    #calls: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->checkIsBeatsPill()V
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$100(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;)V

    .line 79
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 83
    const-string v0, "HeadSetHelper"

    const-string v1, "[BluetoothAdapterListener.onServiceDisconnected]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$1;->this$0:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    const/4 v1, 0x0

    #setter for: Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->access$002(Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 85
    return-void
.end method
