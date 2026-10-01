.class final Landroidx/appcompat/widget/c$e;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/c;)V
    .registers 2

    .line 1039
    iput-object p1, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 13

    const/4 v0, 0x0

    .line 1045
    aget-object v1, p1, v0

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    .line 1046
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x0

    .line 1051
    :try_start_b
    iget-object v4, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iget-object v4, v4, Landroidx/appcompat/widget/c;->d:Landroid/content/Context;

    invoke-virtual {v4, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_13} :catch_dd

    .line 1057
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p1

    .line 1060
    :try_start_17
    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v5, "UTF-8"

    .line 1061
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "historical-records"

    .line 1062
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1064
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v6, v0

    :goto_2b
    if-ge v6, v5, :cond_61

    .line 1066
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/c$c;

    const-string v8, "historical-record"

    .line 1067
    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "activity"

    .line 1068
    iget-object v9, v7, Landroidx/appcompat/widget/c$c;->a:Landroid/content/ComponentName;

    .line 1069
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    .line 1068
    invoke-interface {p1, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "time"

    .line 1070
    iget-wide v9, v7, Landroidx/appcompat/widget/c$c;->b:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "weight"

    .line 1071
    iget v7, v7, Landroidx/appcompat/widget/c$c;->c:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "historical-record"

    .line 1072
    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_61
    const-string v0, "historical-records"

    .line 1078
    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_69} :catch_b3
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_69} :catch_94
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_69} :catch_75
    .catchall {:try_start_17 .. :try_end_69} :catchall_73

    .line 1091
    iget-object p0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iput-boolean v2, p0, Landroidx/appcompat/widget/c;->f:Z

    if-eqz v4, :cond_d2

    .line 1094
    :goto_6f
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_d2

    goto :goto_d2

    :catchall_73
    move-exception p1

    goto :goto_d3

    :catch_75
    move-exception p1

    .line 1089
    :try_start_76
    sget-object v0, Landroidx/appcompat/widget/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Error writing historical record file: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iget-object v5, v5, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8d
    .catchall {:try_start_76 .. :try_end_8d} :catchall_73

    .line 1091
    iget-object p0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iput-boolean v2, p0, Landroidx/appcompat/widget/c;->f:Z

    if-eqz v4, :cond_d2

    goto :goto_6f

    :catch_94
    move-exception p1

    .line 1087
    :try_start_95
    sget-object v0, Landroidx/appcompat/widget/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Error writing historical record file: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iget-object v5, v5, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_95 .. :try_end_ac} :catchall_73

    .line 1091
    iget-object p0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iput-boolean v2, p0, Landroidx/appcompat/widget/c;->f:Z

    if-eqz v4, :cond_d2

    goto :goto_6f

    :catch_b3
    move-exception p1

    .line 1085
    :try_start_b4
    sget-object v0, Landroidx/appcompat/widget/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Error writing historical record file: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iget-object v5, v5, Landroidx/appcompat/widget/c;->e:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cb
    .catchall {:try_start_b4 .. :try_end_cb} :catchall_73

    .line 1091
    iget-object p0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iput-boolean v2, p0, Landroidx/appcompat/widget/c;->f:Z

    if-eqz v4, :cond_d2

    goto :goto_6f

    :catch_d2
    :cond_d2
    :goto_d2
    return-object v3

    :goto_d3
    iget-object p0, p0, Landroidx/appcompat/widget/c$e;->a:Landroidx/appcompat/widget/c;

    iput-boolean v2, p0, Landroidx/appcompat/widget/c;->f:Z

    if-eqz v4, :cond_dc

    .line 1094
    :try_start_d9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dc

    .line 1099
    :catch_dc
    :cond_dc
    throw p1

    :catch_dd
    move-exception p0

    .line 1053
    sget-object v0, Landroidx/appcompat/widget/c;->a:Ljava/lang/String;

    const-string v1, "Error writing historical record file: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1037
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/c$e;->a([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
