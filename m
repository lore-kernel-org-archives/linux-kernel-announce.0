Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1072134F241
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761744667; cv=none; b=GvRAErzgczbXEeKmlxF/oM2aVGTTbUP3CDmRbrMxv5KR4Of9PVi7Kretji0gDApOAV2wYUi9Qpm002dMD75qYJ+7t+e/rAbofz6Vq3mU00ibiC1jqXKMa+F7Vs2YVX2qN3+w/sW+wz/GsX+0dhn1eBmsu3Lmk++d1uj1v/gWEQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761744667; c=relaxed/simple;
	bh=MkIGKwjD83/j+YS6RikslP5jFYAyqHG0SGK5tUzRIlY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ERmZahYGOGcWteghCstg039hDI8oIhHBuEZbOmGmWpbSQVuIMK6rAbxqTHZexBY/RXh0hbaFmR/cQQ+Lt+Y8zDGcHdQU4tJJ/iU+zyDdJ1qeeHgzC+fKzLP9+pGU4glw7dJmcXPEK6R3a8D4ibDzpZitSxcW/l2SKxfMkweNpr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761744667;
	bh=MkIGKwjD83/j+YS6RikslP5jFYAyqHG0SGK5tUzRIlY=;
	h=Subject:From:To:Date:From;
	b=b7VgXcaLmAv+boIDmcLMH2dAw/Jgbv8DSvxqO0Yno6xaDi8JXFF4vu7zGGzY5LDI6
	 ZO6kHc5o33eG42ogqcKwxxIayBBXUQS0OdvLSnBwZ0jZoOq0rmHTSdoq8YiEBqVrDZ
	 J27EylaD1dm0UGNArII2a2p0VbN2HO2CJGhGc5As=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90DFDC116B1
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:31:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE9A83A4100A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:30:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.158 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Oct 2025 13:30:40 +0000
Message-Id: <20251029133040.release-6.1.158@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.158
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.158.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.158.xz

Linux kernel version 6.1.158 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.158.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.158.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.158.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.158/v6.1.157

