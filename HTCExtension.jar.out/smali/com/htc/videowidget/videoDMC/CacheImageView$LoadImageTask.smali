.class Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "CacheImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoDMC/CacheImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mRes:Landroid/content/res/Resources;

.field final synthetic this$0:Lcom/htc/videowidget/videoDMC/CacheImageView;


# direct methods
.method private constructor <init>(Lcom/htc/videowidget/videoDMC/CacheImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->this$0:Lcom/htc/videowidget/videoDMC/CacheImageView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->this$0:Lcom/htc/videowidget/videoDMC/CacheImageView;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoDMC/CacheImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mContext:Landroid/content/Context;

    .line 72
    iget-object v0, p0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mRes:Landroid/content/res/Resources;

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/videowidget/videoDMC/CacheImageView;Lcom/htc/videowidget/videoDMC/CacheImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;-><init>(Lcom/htc/videowidget/videoDMC/CacheImageView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 24
    .parameter "params"

    .prologue
    .line 79
    const/16 v20, 0x0

    aget-object v15, p1, v20

    .line 80
    .local v15, param:Ljava/lang/Object;
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "doInBackground:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v17, 0x0

    .line 85
    .local v17, result:Landroid/graphics/drawable/Drawable;
    :try_start_0
    instance-of v0, v15, Ljava/lang/Integer;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    check-cast v15, Ljava/lang/Integer;

    .end local v15           #param:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 191
    :cond_0
    :goto_0
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v11, v17

    .line 193
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 194
    .local v11, d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 195
    .local v3, b:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bitmap width:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",height:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v3           #b:Landroid/graphics/Bitmap;
    .end local v11           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-object v17

    .line 89
    .restart local v15       #param:Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v0, v15, Landroid/net/Uri;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 92
    move-object v0, v15

    check-cast v0, Landroid/net/Uri;

    move-object/from16 v19, v0

    .line 93
    .local v19, uri:Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, scheme:Ljava/lang/String;
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "doInBackground param:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",scheme:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v20, "android.resource"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #calls: Lcom/htc/videowidget/videoDMC/CacheImageView;->getResourceId(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$200(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;

    move-result-object v16

    .line 101
    .local v16, r:Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;->id:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 102
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "decode by getResourceId,"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 185
    .end local v15           #param:Ljava/lang/Object;
    .end local v16           #r:Lcom/htc/videowidget/videoDMC/CacheImageView$OpenResourceIdResult;
    .end local v18           #scheme:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 187
    .local v12, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    const-string v21, "get exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 104
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v15       #param:Ljava/lang/Object;
    .restart local v18       #scheme:Ljava/lang/String;
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_3
    :try_start_2
    const-string v20, "content"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "file"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 106
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 107
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "decode by createFromStream:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 109
    :cond_5
    const-string v20, "http"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    const-string v20, "https"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 112
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v9

    .line 113
    .local v9, cacheDir:Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2f

    const/16 v23, 0x25

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, fileName:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_7

    .line 116
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 117
    .local v14, mkdirs:Z
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "mkdirs:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "result:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v14           #mkdirs:Z
    :cond_7
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v10, cacheFile:Ljava/io/File;
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "cacheFile:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 128
    .local v7, bos:Ljava/io/BufferedOutputStream;
    :try_start_3
    const-class v21, Lcom/htc/videowidget/videoDMC/CacheImageView;

    monitor-enter v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 130
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_8

    .line 132
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 134
    :cond_8
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 137
    :try_start_5
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_9

    const-wide/16 v20, 0x0

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-eqz v20, :cond_9

    .line 139
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .local v5, bis:Ljava/io/BufferedInputStream;
    const/16 v20, 0x0

    :try_start_6
    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 140
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "read from cache directly,result"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v4, v5

    .line 168
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_7
    invoke-static {v7}, Lcom/htc/videowidget/videoDMC/CacheImageView;->close(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/CacheImageView;->close(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 134
    :catchall_0
    move-exception v20

    :try_start_8
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 162
    :catch_1
    move-exception v12

    .line 164
    .restart local v12       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_a
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "exception during decode!!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 168
    :try_start_b
    invoke-static {v7}, Lcom/htc/videowidget/videoDMC/CacheImageView;->close(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/CacheImageView;->close(Ljava/io/Closeable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v12           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_c
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "try to decode BitmapDrawable from uri:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v21, Ljava/net/URL;

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :try_start_d
    move-object/from16 v0, v20

    invoke-direct {v11, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    .line 150
    .restart local v11       #d:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 151
    .local v6, bmp:Landroid/graphics/Bitmap;
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x64

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .local v8, bos:Ljava/io/BufferedOutputStream;
    :try_start_e
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 152
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "compress to cache file:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 158
    move-object/from16 v17, v11

    move-object v7, v8

    .end local v8           #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .line 168
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #d:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_1
    move-exception v20

    :goto_3
    :try_start_f
    invoke-static {v7}, Lcom/htc/videowidget/videoDMC/CacheImageView;->close(Ljava/io/Closeable;)V

    .line 169
    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/CacheImageView;->close(Ljava/io/Closeable;)V

    throw v20

    .line 172
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .end local v9           #cacheDir:Ljava/io/File;
    .end local v10           #cacheFile:Ljava/io/File;
    .end local v13           #fileName:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "/data/data/com.htc.htcdlnamiddlelayer"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "/data/data/com.htc.dlnamiddlelayer"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 174
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->this$0:Lcom/htc/videowidget/videoDMC/CacheImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    #calls: Lcom/htc/videowidget/videoDMC/CacheImageView;->getDMSThumbNail(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$300(Lcom/htc/videowidget/videoDMC/CacheImageView;Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v17

    .line 175
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Drawable From DMS:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 179
    :cond_c
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 180
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Drawable.createFromPath:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    .line 168
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    .restart local v9       #cacheDir:Ljava/io/File;
    .restart local v10       #cacheFile:Ljava/io/File;
    .restart local v13       #fileName:Ljava/lang/String;
    :catchall_2
    move-exception v20

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v8       #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catchall_3
    move-exception v20

    move-object v7, v8

    .end local v8           #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .line 162
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    .end local v11           #d:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    :catch_2
    move-exception v12

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #bos:Ljava/io/BufferedOutputStream;
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    .restart local v8       #bos:Ljava/io/BufferedOutputStream;
    .restart local v11       #d:Landroid/graphics/drawable/BitmapDrawable;
    :catch_3
    move-exception v12

    move-object v7, v8

    .end local v8           #bos:Ljava/io/BufferedOutputStream;
    .restart local v7       #bos:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->this$0:Lcom/htc/videowidget/videoDMC/CacheImageView;

    invoke-virtual {v1, p1}, Lcom/htc/videowidget/videoDMC/CacheImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v1, p0, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->this$0:Lcom/htc/videowidget/videoDMC/CacheImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoDMC/CacheImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 222
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drawable result is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/videowidget/videoDMC/CacheImageView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "failed to setDrawable!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoDMC/CacheImageView$LoadImageTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
