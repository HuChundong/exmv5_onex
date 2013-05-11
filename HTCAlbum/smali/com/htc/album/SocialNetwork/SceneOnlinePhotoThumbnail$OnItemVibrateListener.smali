.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoThumbnail.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemLongPressVibrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemVibrateListener"
.end annotation


# static fields
.field private static final PLUGIN_PICASA:Ljava/lang/String; = "Picasa"


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)V

    return-void
.end method


# virtual methods
.method public onItemLongPressVibrateIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;II)Z
    .locals 5
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 178
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    iget v3, v3, Lcom/htc/album/SocialNetwork/SceneOnlinePickerBase;->mPickerMode:I

    if-eqz v3, :cond_1

    .line 179
    const/4 v0, 0x0

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$300(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 183
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$400(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v3

    check-cast v3, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v3}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getDataPlugin()Lcom/htc/opensense/album/plugin/BaseListPlugin;

    move-result-object v1

    .line 184
    .local v1, plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    if-eqz v1, :cond_2

    .line 190
    const/4 v0, 0x0

    .line 193
    .local v0, bVibrate:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail$OnItemVibrateListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;->access$500(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "service_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, szPluginService:Ljava/lang/String;
    const-string v3, "Picasa"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    .end local v0           #bVibrate:Z
    .end local v1           #plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    .end local v2           #szPluginService:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    .restart local v0       #bVibrate:Z
    .restart local v1       #plugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
