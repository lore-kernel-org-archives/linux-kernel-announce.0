Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6E9266B4C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741867818; cv=none; b=KEviBA39AAAb7RgBgXxKp0yK+BCW6YiSkNmTH93G7d8URhBwEeMkafWsNfry0A2ipgHKPpLyYloP1I0t0tZKfkkYKbwIjN4iPZTRTk8hcljDo+PUOntTA4HBiYnK1ZlUE7vlYcY8da3D1eiUtn1A4PSjmTQRHXHbXnE+xdltiYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741867818; c=relaxed/simple;
	bh=9Zki7NjgQv825bSh5BtK+HthGLYy7ggUwBw7hyO1Uc8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MmCKpqoV9vZt9egE59Nmwp/Rg4Pa3lc+U6OftJgdoYAiTo2FQ7EgrwQGqFPDIyVxyV830xIkBWs0rDSBeZJ3IUtHjStQa8OQAUFlNVVVaddXxh+WIB7GIVa9fvFWYe2cbe1ALIIi+6hmEWvZOnGO1Bu3sl6G3+Vq6tx6cI5SrrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1741867818;
	bh=9Zki7NjgQv825bSh5BtK+HthGLYy7ggUwBw7hyO1Uc8=;
	h=Subject:From:To:Date:From;
	b=JoKZHDa1UadwiqrwknDzWDxk2pWH4HidkMjILSqKVyV320rRYtvVENGZQLPeJUYTp
	 RzPTNGvV+UEZM3qwdK/IwO+TL8/hW7EjMRcsxCCoNMV5BQD05OZ27vU+bcBj31XDZl
	 fdkjsiJoj+/p6jmESnFIHwZ8YC3HSXMqdvhAfy7Q=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A95C8C4CEE5
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:10:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 70DB23806651
	for <linux-kernel-announce@vger.kernel.org>; Thu, 13 Mar 2025 12:10:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.179 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 13 Mar 2025 12:10:52 +0000
Message-Id: <20250313121052.release-5.15.179@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.179
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.179.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.179.xz

Linux kernel version 5.15.179 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.179.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.179.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.179.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.179/v5.15.178

