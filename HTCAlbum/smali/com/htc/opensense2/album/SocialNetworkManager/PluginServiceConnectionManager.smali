.class public Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;
.super Ljava/lang/Object;
.source "PluginServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$1;,
        Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PluginServiceConnectionManager"

.field private static mActivePlugin:Ljava/lang/String;

.field private static mReferenceCount:I

.field private static mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 20
    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mActivePlugin:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mActivePlugin:Ljava/lang/String;

    return-object v0
.end method

.method public static destroyInstance()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 156
    sget v6, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    .line 157
    sget v6, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    if-gtz v6, :cond_2

    .line 159
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v6, :cond_1

    .line 161
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 162
    .local v4, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 163
    .local v5, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;>;>;"
    const/4 v3, 0x0

    .line 166
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;>;"
    :goto_0
    :try_start_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/Map$Entry;

    move-object v3, v0

    .line 169
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;

    .line 170
    .local v1, connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    const-string v6, "PluginServiceConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][PluginServiceConnectionManager][destroyInstance]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;->isSignedIn()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    :catch_0
    move-exception v2

    .line 176
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "PluginServiceConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][PluginServiceConnectionManager][destroyInstance]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    sget-object v6, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 181
    :cond_1
    const/4 v6, 0x0

    sput v6, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    .line 182
    sput-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    .line 183
    sput-object v9, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 185
    :cond_2
    const-string v6, "PluginServiceConnectionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HTCAlbum][PluginServiceConnectionManager][destroyInstance]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static getActiveConnection()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, connection:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mActivePlugin:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :cond_1
    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mActivePlugin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;

    .line 141
    .restart local v0       #connection:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
    goto :goto_0
.end method

.method public static instance()Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    invoke-direct {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    .line 148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    .line 150
    :cond_0
    sget v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    .line 151
    const-string v0, "PluginServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][PluginServiceConnectionManager][instance]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    return-object v0
.end method


# virtual methods
.method public connectTo(Lcom/htc/opensense/plugin/TabPlugin;Landroid/content/Intent;)V
    .locals 8
    .parameter "plugin"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 190
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mThis:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;

    if-eqz v4, :cond_0

    if-nez p2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 201
    const-string v4, "service_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, serviceName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 205
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;

    .line 206
    .local v1, connection:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
    if-nez v1, :cond_2

    .line 208
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;

    .end local v1           #connection:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$1;)V

    .line 209
    .restart local v1       #connection:Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;
    sget-object v4, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mServiceConnection:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    const-string v4, "opensense_tab"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 215
    .local v0, bIsOpenSensePlugin:Z
    const-string v4, "friendplugin"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, szText:Ljava/lang/String;
    if-ne v6, v0, :cond_4

    if-nez v3, :cond_4

    .line 217
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsNoFriends:Z
    invoke-static {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$202(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    .line 224
    :goto_1
    if-eqz p1, :cond_6

    .line 225
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.vmm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z
    invoke-static {v1, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$302(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    .line 241
    :goto_2
    if-eqz p1, :cond_8

    .line 242
    invoke-virtual {p1}, Lcom/htc/opensense/plugin/TabPlugin;->getTabTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.dropbox"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z
    invoke-static {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$402(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    .line 245
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsPermissionRequired:Z
    invoke-static {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    .line 254
    :cond_3
    :goto_3
    sput-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager;->mActivePlugin:Ljava/lang/String;

    .line 256
    const-string v4, "PluginServiceConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][PluginServiceConnectionManager][connectTo]: No Friends\t:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsNoFriends:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$200(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v4, "PluginServiceConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][PluginServiceConnectionManager][connectTo]: require login:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$300(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v4, "PluginServiceConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][PluginServiceConnectionManager][connectTo]: enable retry\t:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    #getter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z
    invoke-static {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$400(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_4
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsNoFriends:Z
    invoke-static {v1, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$202(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    goto :goto_1

    .line 228
    :cond_5
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z
    invoke-static {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$302(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    goto :goto_2

    .line 230
    :cond_6
    const-string v4, "Backup Assistant Plus"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 231
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z
    invoke-static {v1, v7}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$302(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    goto :goto_2

    .line 233
    :cond_7
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsSignInRequired:Z
    invoke-static {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$302(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    goto/16 :goto_2

    .line 248
    :cond_8
    const-string v4, "Dropbox"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsRetryEnabled:Z
    invoke-static {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$402(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    .line 250
    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->mIsPermissionRequired:Z
    invoke-static {v1, v6}, Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;->access$502(Lcom/htc/opensense2/album/SocialNetworkManager/PluginServiceConnectionManager$pluginConnection;Z)Z

    goto :goto_3
.end method
