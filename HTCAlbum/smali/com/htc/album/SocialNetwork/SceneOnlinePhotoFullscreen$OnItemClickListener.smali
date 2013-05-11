.class Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1245
    invoke-direct {p0, p1}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;-><init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 12
    .parameter "parent"
    .parameter "position"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1249
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    invoke-static {v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2800(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v8

    check-cast v8, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;

    invoke-virtual {v8, p2}, Lcom/htc/album/SocialNetwork/LivePhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    move-result-object v0

    .line 1250
    .local v0, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$2900(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1251
    .local v1, display:Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1252
    .local v7, ptSize:Landroid/graphics/Point;
    invoke-virtual {v1, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1253
    iget v5, v7, Landroid/graphics/Point;->x:I

    .line 1254
    .local v5, posX:I
    iget v6, v7, Landroid/graphics/Point;->y:I

    .line 1256
    .local v6, posY:I
    check-cast p1, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getItemClickInfo()Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;

    move-result-object v8

    iget-object v3, v8, Lcom/htc/sunny2/fullfilmview/FullFilmView$ItemClickInfo;->motionEvent:Landroid/view/MotionEvent;

    .line 1257
    .local v3, me:Landroid/view/MotionEvent;
    if-eqz v3, :cond_0

    .line 1259
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 1260
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 1263
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v8

    if-ne v10, v8, :cond_1

    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #calls: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->isHitIndicator(II)Z
    invoke-static {v8, v5, v6}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3000(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;II)Z

    move-result v8

    if-ne v10, v8, :cond_1

    .line 1265
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v4, mediaIntent:Landroid/content/Intent;
    :try_start_0
    const-string v8, "com.htc.video"

    const-string v9, "com.htc.video.ViewVideo"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1269
    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getVideoUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "Video/mp4"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1270
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    #getter for: Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;
    invoke-static {v8}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->access$3100(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;)Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    .end local v4           #mediaIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1272
    .restart local v4       #mediaIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1274
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "SceneOnlinePhotoFullscreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can not launch view player. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1279
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #mediaIntent:Landroid/content/Intent;
    :cond_1
    iget-object v8, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen$OnItemClickListener;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    const/16 v9, 0x139c

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method
