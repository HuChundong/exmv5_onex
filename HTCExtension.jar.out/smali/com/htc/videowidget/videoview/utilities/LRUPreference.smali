.class public Lcom/htc/videowidget/videoview/utilities/LRUPreference;
.super Landroid/os/AsyncTask;
.source "LRUPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LRUPreference"

.field private static final MAX_ENTRIES:I = 0x1e

.field private static final PREF_PLAYER:Ljava/lang/String; = "pref_player"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mFilePath:Ljava/lang/String;

    .line 195
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;-><init>(Lcom/htc/videowidget/videoview/utilities/LRUPreference;I)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    .line 33
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mFilePath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private readFromFile(Ljava/lang/String;)V
    .locals 10
    .parameter "filePath"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 151
    .local v5, sk:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 153
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 155
    .local v4, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 162
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v8, "LRUPreference"

    const-string v9, "LRUPreference readFromFile FileNotFoundException!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 177
    :cond_0
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    .line 178
    .local v6, stackSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_4

    .line 180
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    .local v7, temp:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-virtual {v8, v7, v7}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 174
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .end local v3           #i:I
    .end local v6           #stackSize:I
    .end local v7           #temp:Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 175
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 177
    :cond_2
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    .line 178
    .restart local v6       #stackSize:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v6, :cond_3

    .line 180
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    .restart local v7       #temp:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-virtual {v8, v7, v7}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v7           #temp:Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .line 193
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v3           #i:I
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #stackSize:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_4
    :goto_4
    return-void

    .line 184
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 186
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 191
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 188
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    .line 190
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 192
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 184
    .end local v4           #line:Ljava/lang/String;
    .local v2, ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 186
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 188
    .local v2, ex:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 190
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 165
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 167
    .local v2, ex:Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string v8, "LRUPreference"

    const-string v9, "LRUPreference readFromFile IOException!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 177
    :cond_5
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    .line 178
    .restart local v6       #stackSize:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_6
    if-ge v3, v6, :cond_4

    .line 180
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    .restart local v7       #temp:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-virtual {v8, v7, v7}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 184
    .end local v3           #i:I
    .end local v6           #stackSize:I
    .end local v7           #temp:Ljava/lang/String;
    :catch_6
    move-exception v2

    .line 186
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 188
    :catch_7
    move-exception v2

    .line 190
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 172
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 174
    :goto_7
    if-eqz v0, :cond_6

    .line 175
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 177
    :cond_6
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v6

    .line 178
    .restart local v6       #stackSize:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_8
    if-ge v3, v6, :cond_7

    .line 180
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 181
    .restart local v7       #temp:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-virtual {v9, v7, v7}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 184
    .end local v3           #i:I
    .end local v6           #stackSize:I
    .end local v7           #temp:Ljava/lang/String;
    :catch_8
    move-exception v2

    .line 186
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    .end local v2           #ex:Ljava/io/IOException;
    :cond_7
    :goto_9
    throw v8

    .line 188
    :catch_9
    move-exception v2

    .line 190
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 172
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 165
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_5

    .line 160
    .end local v4           #line:Ljava/lang/String;
    :catch_b
    move-exception v2

    goto/16 :goto_1
.end method

.method private removePreferenceByPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "path"

    .prologue
    .line 77
    :try_start_0
    const-string v2, "pref_player"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 78
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "filePath"
    .parameter "newEntryPath"

    .prologue
    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, osw:Ljava/io/OutputStreamWriter;
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 99
    .local v7, sk:Ljava/util/Stack;,"Ljava/util/Stack<Ljava/lang/String;>;"
    :try_start_0
    new-instance v6, Ljava/io/OutputStreamWriter;

    iget-object v10, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-virtual {v10, p1, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 101
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .local v6, osw:Ljava/io/OutputStreamWriter;
    :try_start_1
    const-string v10, "LRUPreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LRUPreference writeToFile NewEntry: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v10, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-virtual {v10, p2, p2}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    iget-object v10, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-virtual {v10}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->getAll()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    move-object v5, v6

    .line 120
    .end local v6           #osw:Ljava/io/OutputStreamWriter;
    .local v0, e:Ljava/lang/Exception;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    :goto_1
    :try_start_2
    const-string v10, "LRUPreference"

    const-string v11, "LRUPreference writeToFile Exception!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v5, :cond_0

    .line 128
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 129
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 137
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 110
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #osw:Ljava/io/OutputStreamWriter;
    :cond_1
    :try_start_4
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v8

    .line 111
    .local v8, stackSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v8, :cond_2

    .line 113
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 114
    .local v9, temp:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 115
    const-string v10, "LRUPreference"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LRUPreference writeToFile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 126
    .end local v9           #temp:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 128
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 129
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move-object v5, v6

    .line 135
    .end local v6           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 132
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #osw:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v2

    .line 134
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 136
    .end local v6           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 132
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #stackSize:I
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 134
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 126
    :goto_4
    if-eqz v5, :cond_4

    .line 128
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 129
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 135
    :cond_4
    :goto_5
    throw v10

    .line 132
    :catch_3
    move-exception v2

    .line 134
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 124
    .end local v2           #ex:Ljava/io/IOException;
    .end local v5           #osw:Ljava/io/OutputStreamWriter;
    .restart local v6       #osw:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6           #osw:Ljava/io/OutputStreamWriter;
    .restart local v5       #osw:Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 118
    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    .line 41
    const-string v4, "LRUPreference"

    const-string v5, "LRUPreference doInBackground."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    array-length v0, p1

    .line 43
    .local v0, count:I
    const/4 v3, 0x0

    .line 45
    .local v3, newEntryPath:Ljava/lang/String;
    sget-object v5, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 47
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 49
    :try_start_0
    aget-object v3, p1, v2

    .line 50
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->readFromFile(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->eldestEntry:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 56
    const-string v6, "LRUPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LRUPreference doInBackground: Remove Entry: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->eldestEntry:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v6, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    iget-object v4, v4, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->eldestEntry:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->removePreferenceByPath(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->clear()V

    .line 62
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->moviesPath:Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/htc/videowidget/videoview/utilities/LRUPreference$LRUCache;->eldestEntry:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "LRUPreference"

    const-string v6, "LRUPreference doInBackground Exception!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    return-object v8
.end method
