.class Landroid/net/wifi/WifiStateMachine$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 1177
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_ssid"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1178
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1179
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, randomssid:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 1181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1183
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC Portable Hotspot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1184
    const-string v2, "WifiStateMachine"

    const-string v3, ">>>>>>>>sky: start checkHtcCustomization<<<<<<"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z
    invoke-static {v2, v5}, Landroid/net/wifi/WifiStateMachine;->access$502(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 1186
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSSIDCustomization(Landroid/content/Context;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Context;)V

    .line 1187
    const-string v2, "WifiStateMachine"

    const-string v3, ">>>>>>>>sky: end checkHtcCustomization<<<<<<<<"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_ssid"

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1199
    .end local v0           #randomssid:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1189
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1190
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v3, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$702(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 1191
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1192
    .local v1, tempssid:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    const-string v3, "HTC Portable Hotspot"

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1193
    const-string v2, "WifiStateMachine"

    const-string v3, ">>>>>>>>sky: start checkHtcCustomization<<<<<<"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->checkSSIDCustomization(Landroid/content/Context;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Context;)V

    .line 1195
    const-string v2, "WifiStateMachine"

    const-string v3, ">>>>>>>>sky: end checkHtcCustomization<<<<<<<<"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1197
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_ssid"

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$4;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
