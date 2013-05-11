.class public Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;
.super Lcom/htc/socialnetwork/tmo/engine/HttpTransport;
.source "PhotoListDownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TMUS_PhotoListDownloadThread"


# instance fields
.field private mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

.field private mHttpGet:Lorg/apache/http/client/methods/HttpGet;

.field private mToken:Ljava/lang/String;

.field private mTokenAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;-><init>()V

    .line 33
    return-void
.end method

.method private ParseResult(Lorg/json/JSONObject;Ljava/util/List;)Ljava/lang/String;
    .locals 25
    .parameter "obj"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 165
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;>;"
    const-string v12, ""

    .line 167
    .local v12, nextUri:Ljava/lang/String;
    :try_start_0
    const-string v22, "feed"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 169
    .local v13, objFeed:Lorg/json/JSONObject;
    const-string v22, "link"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 170
    .local v4, arrayLink:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_0

    .line 171
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 172
    .local v15, pobj:Lorg/json/JSONObject;
    const-string v22, "rel"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 174
    .local v18, rel:Ljava/lang/String;
    const-string v22, "next"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 175
    const-string v22, "href"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 180
    .end local v15           #pobj:Lorg/json/JSONObject;
    .end local v18           #rel:Ljava/lang/String;
    :cond_0
    const-string v22, "entry"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 181
    .local v3, arrayEntry:Lorg/json/JSONArray;
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_8

    .line 182
    new-instance v10, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;

    invoke-direct {v10}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;-><init>()V

    .line 183
    .local v10, livegalleryphoto:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 185
    .restart local v15       #pobj:Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 187
    .local v17, ptemp:Lorg/json/JSONObject;
    const-string v22, "title"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 188
    if-eqz v17, :cond_1

    .line 189
    const-string v22, "$t"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 190
    .local v21, title:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->SetTitle(Ljava/lang/String;)V

    .line 193
    .end local v21           #title:Ljava/lang/String;
    :cond_1
    const-string v22, "published"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 195
    if-eqz v17, :cond_2

    .line 196
    const-string v22, "$t"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    :cond_2
    const-string v22, "updated"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 202
    if-eqz v17, :cond_3

    .line 203
    const-string v22, "$t"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    :cond_3
    const-string v22, "content"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 209
    if-eqz v17, :cond_4

    .line 210
    const-string v22, "$t"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, description:Ljava/lang/String;
    invoke-virtual {v10, v6}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->SetDescription(Ljava/lang/String;)V

    .line 214
    .end local v6           #description:Ljava/lang/String;
    :cond_4
    const-string v22, "link"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 215
    .local v5, arrayMediaLink:Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_5

    .line 216
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 219
    .local v16, pobjMedia:Lorg/json/JSONObject;
    const-string v22, "rel"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, Mediarel:Ljava/lang/String;
    const-string v22, "edit-media"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 221
    const-string v22, "media$group"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "media$content"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "url"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 224
    .local v14, photo:Ljava/lang/String;
    const-string v22, "media$group"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "media$thumbnail"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "url"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 228
    .local v19, tempthumbnail:Ljava/lang/String;
    const/16 v22, 0x3f

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 229
    .local v11, nLastQuestion:I
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 232
    .local v20, thumbnail:Ljava/lang/String;
    invoke-virtual {v10, v14}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->SetPhotoUri(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;->SetThumbnailUri(Ljava/lang/String;)V

    .line 237
    .end local v2           #Mediarel:Ljava/lang/String;
    .end local v11           #nLastQuestion:I
    .end local v14           #photo:Ljava/lang/String;
    .end local v16           #pobjMedia:Lorg/json/JSONObject;
    .end local v19           #tempthumbnail:Ljava/lang/String;
    .end local v20           #thumbnail:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 170
    .end local v3           #arrayEntry:Lorg/json/JSONArray;
    .end local v5           #arrayMediaLink:Lorg/json/JSONArray;
    .end local v9           #j:I
    .end local v10           #livegalleryphoto:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;
    .end local v17           #ptemp:Lorg/json/JSONObject;
    .restart local v18       #rel:Ljava/lang/String;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 215
    .end local v18           #rel:Ljava/lang/String;
    .restart local v2       #Mediarel:Ljava/lang/String;
    .restart local v3       #arrayEntry:Lorg/json/JSONArray;
    .restart local v5       #arrayMediaLink:Lorg/json/JSONArray;
    .restart local v9       #j:I
    .restart local v10       #livegalleryphoto:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;
    .restart local v16       #pobjMedia:Lorg/json/JSONObject;
    .restart local v17       #ptemp:Lorg/json/JSONObject;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 239
    .end local v2           #Mediarel:Ljava/lang/String;
    .end local v3           #arrayEntry:Lorg/json/JSONArray;
    .end local v4           #arrayLink:Lorg/json/JSONArray;
    .end local v5           #arrayMediaLink:Lorg/json/JSONArray;
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v10           #livegalleryphoto:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;
    .end local v13           #objFeed:Lorg/json/JSONObject;
    .end local v15           #pobj:Lorg/json/JSONObject;
    .end local v16           #pobjMedia:Lorg/json/JSONObject;
    .end local v17           #ptemp:Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .line 240
    .local v7, e:Lorg/json/JSONException;
    const-string v22, "TMUS_PhotoListDownloadThread"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "!JSON Exception "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v7}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    throw v7

    .line 243
    .end local v7           #e:Lorg/json/JSONException;
    .restart local v3       #arrayEntry:Lorg/json/JSONArray;
    .restart local v4       #arrayLink:Lorg/json/JSONArray;
    .restart local v8       #i:I
    .restart local v13       #objFeed:Lorg/json/JSONObject;
    :cond_8
    return-object v12
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    .line 76
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 77
    return-void
.end method

.method public Init(Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V
    .locals 4
    .parameter "username"
    .parameter "password"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->InitHttpClient()V

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->InitAuth(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "TMUS_PhotoListDownloadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mDownloadUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iput-object p3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    .line 46
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mDownloadUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 47
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 48
    iput-boolean v3, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    .line 49
    iput-boolean v3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mTokenAuth:Z

    .line 50
    return-void
.end method

.method public Init2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;)V
    .locals 3
    .parameter "username"
    .parameter "password"
    .parameter "token"
    .parameter "callback"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->InitHttpClient()V

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->InitAuth2(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v0, "TMUS_PhotoListDownloadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mDownloadUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p4, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    .line 63
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mDownloadUri:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 64
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v1, "Authorization"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iput-object v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    .line 67
    iput-object p3, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mToken:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mTokenAuth:Z

    .line 69
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 83
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 87
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryPhoto;>;"
    :goto_0
    :try_start_0
    iget-boolean v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v8, :cond_0

    .line 88
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CANCEL_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V

    .line 92
    :cond_0
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v9, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 94
    .local v2, httpresponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 96
    .local v7, status:I
    const-string v8, "TMUS_PhotoListDownloadThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Status code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_3

    .line 99
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 100
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 101
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, content:Ljava/lang/String;
    const/16 v8, 0x7b

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .local v5, obj:Lorg/json/JSONObject;
    invoke-direct {p0, v5, v3}, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->ParseResult(Lorg/json/JSONObject;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, nexturi:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 108
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->SUCCESS_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    invoke-interface {v8, v9, v3}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v4           #nexturi:Ljava/lang/String;
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #status:I
    :goto_1
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 161
    return-void

    .line 114
    .restart local v0       #content:Ljava/lang/String;
    .restart local v2       #httpresponse:Lorg/apache/http/HttpResponse;
    .restart local v4       #nexturi:Ljava/lang/String;
    .restart local v5       #obj:Lorg/json/JSONObject;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #status:I
    :cond_1
    :try_start_1
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 115
    iget-boolean v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mTokenAuth:Z

    if-eqz v8, :cond_2

    .line 116
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    const-string v9, "Authorization"

    iget-object v10, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mToken:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mHttpGet:Lorg/apache/http/client/methods/HttpGet;

    iput-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 132
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v4           #nexturi:Ljava/lang/String;
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #status:I
    :catch_0
    move-exception v1

    .line 133
    .local v1, e:Ljava/io/IOException;
    const-string v8, "TMUS_PhotoListDownloadThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-boolean v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v8, :cond_5

    .line 135
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CANCEL_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    invoke-interface {v8, v9, v11}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V

    goto :goto_1

    .line 119
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #httpresponse:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:I
    :cond_3
    const/16 v8, 0x191

    if-ne v7, v8, :cond_4

    .line 120
    :try_start_2
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_INVALID_USERNAME_PASSWORD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 145
    .end local v2           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    :catch_1
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "TMUS_PhotoListDownloadThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!!! Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-boolean v8, p0, Lcom/htc/socialnetwork/tmo/engine/HttpTransport;->mCancel:Z

    if-eqz v8, :cond_6

    .line 148
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CANCEL_DOWNLOAD:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    invoke-interface {v8, v9, v11}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V

    goto/16 :goto_1

    .line 126
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #httpresponse:Lorg/apache/http/HttpResponse;
    .restart local v7       #status:I
    :cond_4
    :try_start_3
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_SERVER_UNAVAILABLE:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 140
    .end local v2           #httpresponse:Lorg/apache/http/HttpResponse;
    .end local v7           #status:I
    .local v1, e:Ljava/io/IOException;
    :cond_5
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_CONNECTION_ERROR:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    invoke-interface {v8, v9, v11}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V

    goto/16 :goto_1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    :cond_6
    iget-object v8, p0, Lcom/htc/socialnetwork/tmo/engine/livegallery/PhotoListDownloadThread;->mCallback:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;

    sget-object v9, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;->FAIL_SERVER_ERROR:Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;

    invoke-interface {v8, v9, v11}, Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback;->onDownloadPhotoListResult(Lcom/htc/socialnetwork/tmo/engine/livegallery/LiveGalleryCallback$DOWNLOAD_RESULT;Ljava/util/List;)V

    goto/16 :goto_1
.end method
