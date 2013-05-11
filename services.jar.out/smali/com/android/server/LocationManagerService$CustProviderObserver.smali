.class final Lcom/android/server/LocationManagerService$CustProviderObserver;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CustProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2985
    iput-object p1, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2985
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$CustProviderObserver;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9
    .parameter "o"
    .parameter "arg"

    .prologue
    .line 2987
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2988
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2989
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "customized_location_provider"

    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2993
    .local v1, custProviderName:Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2994
    monitor-exit v6

    .line 3065
    :goto_0
    return-void

    .line 2995
    :cond_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2996
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2800(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2997
    monitor-exit v6

    goto :goto_0

    .line 3064
    .end local v1           #custProviderName:Ljava/lang/String;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 3000
    .restart local v1       #custProviderName:Ljava/lang/String;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/server/LocationManagerService;->access$2802(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 3002
    const/4 v3, 0x0

    .line 3003
    .local v3, strGeoCodeName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3006
    .local v4, strNetworkName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 3007
    const-string v5, ".google."

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3008
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mDefaultNetworkLocationProviderName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2900(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v4

    .line 3009
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mDefaultGeocodeProviderName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$3000(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 3015
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 3016
    const-string v4, "android.htc.china.location.service"

    .line 3018
    :cond_3
    if-nez v3, :cond_4

    .line 3019
    const-string v3, "android.htc.china.location.service"

    .line 3021
    :cond_4
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    const-string v7, "com.android.location.service.NetworkLocationProvider"

    invoke-virtual {v5, v7, v4}, Lcom/android/server/LocationManagerService;->findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3022
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    const-string v7, "com.android.location.service.GeocodeProvider"

    invoke-virtual {v5, v7, v3}, Lcom/android/server/LocationManagerService;->findBestPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3023
    const-string v5, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CustProvider][Update] currentPackage, NetworkLocation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Geocode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    const-string v5, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CustProvider][Update] findBestPackage, NetworkLocation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Geocode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    const/4 v0, 0x0

    .line 3028
    .local v0, bUpdate:Z
    if-eqz v3, :cond_5

    .line 3029
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 3030
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3031
    const/4 v0, 0x1

    .line 3037
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 3038
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 3039
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/location/GeocoderProxy;->reconnect(Ljava/lang/String;)V

    .line 3040
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/android/server/LocationManagerService;->access$2402(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 3041
    const-string v5, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CustProvider][reconnect] Geocode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    :cond_6
    const/4 v0, 0x0

    .line 3047
    if-eqz v4, :cond_7

    .line 3048
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 3049
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 3050
    const/4 v0, 0x1

    .line 3056
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 3057
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v5, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v5, :cond_8

    .line 3058
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v5, v5, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v5, v4}, Lcom/android/server/location/LocationProviderProxy;->reconnect(Ljava/lang/String;)V

    .line 3059
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/server/LocationManagerService;->access$2202(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 3060
    iget-object v5, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$3100(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, "network"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    const-string v5, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CustProvider][reconnect] NetworkLocation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/LocationManagerService$CustProviderObserver;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/LocationManagerService;->access$2200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    :cond_8
    monitor-exit v6

    goto/16 :goto_0

    .line 3010
    .end local v0           #bUpdate:Z
    :cond_9
    const-string v5, ".htc."

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3011
    const-string v4, "android.htc.china.location.service"

    .line 3012
    const-string v3, "android.htc.china.location.service"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 3034
    .restart local v0       #bUpdate:Z
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 3053
    :cond_b
    const/4 v0, 0x1

    goto :goto_3
.end method
