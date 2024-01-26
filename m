Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E455E8F44
	for <linux-kernel-announce@vger.kernel.org>; Fri, 26 Jan 2024 00:00:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706227244; cv=none; b=ARhsMkToCYu6BHgIuE9FwoVt0pawXOcviwNL6WnRhOuoASzTirhHYGS54xxka1jv5qnoHLQe/K4CvnKgAORe2m64kR5eI5OocY58J9f/4dg9Dj2fA0+KrtwsCTQVVDbj4GDQBIyXqYH7S5y8vdsMbokOWj0YLga6zOn+xb1MlSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706227244; c=relaxed/simple;
	bh=Gd6jcw8uS5PV7lVNCRj+B/4xe/JfUEX5HbtJXbKcTvo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gKhKSRUO5GX78EwWzMFk0ViB/J60yGC55CVDypnCr5M5DdQRPDYsgjrYFHkYGa3En1A8DO4xyiwNeDLmwNXfT0O8RFVdLkndMaEAfIiAgtrYMAMu+SxvqX0Q1qN/FITAgwE7ApkAApkdXyTYtHGd+CcKx5MCr+sOgUx2lMilZVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706227243;
	bh=Gd6jcw8uS5PV7lVNCRj+B/4xe/JfUEX5HbtJXbKcTvo=;
	h=Subject:From:To:Date:From;
	b=idrxo07svt+KB1M8waNHcb0frbm2SS+js512mB0v5RKwUpNz0imB39uTJFdPXU87N
	 NO0PK5PzURb69LIY+QF5C1gU9TYzQYPbciqVkEA0lc39S5CZRHQDL1JMJfYs3dUe3o
	 +Y7P04dTZmwX5XGGHds59Sok5ZHLj+v9omV/aAlc=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78507C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 26 Jan 2024 00:00:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 667E0DFF765
	for <linux-kernel-announce@vger.kernel.org>; Fri, 26 Jan 2024 00:00:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 26 Jan 2024 00:00:43 +0000
Message-Id: <20240126000043.release-6.7.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.2.xz

Linux kernel version 6.7.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.2/v6.7.1

