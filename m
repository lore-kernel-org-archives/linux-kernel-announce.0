Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541B244C73
	for <linux-kernel-announce@vger.kernel.org>; Sun, 21 Apr 2024 20:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713730590; cv=none; b=uTrcCBKgJB7vfVKYsIksUrq9pcvzyjzEkSNJRUdT+R7fH365bUEa0eoOzxl+jJ0BH7yYFKAwJkQDpAMX2sJsvQlqCtMOyx01Wb6UE/31Lfjt7b19Lw60LzhTR++VmJG8csDCJhFz0fe6coOLXNiJkSlUzJ3Fs6qRbIINXw30ja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713730590; c=relaxed/simple;
	bh=M7Y1sxNayR3zJxzitRIvgx/57iw0C9+tj16k9Su8WbI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mhuyabmMuvbk2clxfo5LbtZsLcLNT4hzpgMpcP2XjZPcxXGhbfCVEwKMGui4ybwRehb290JKXeI08uG1aTTyAtK5m+mBOsse96970WGHQtoUVbEgScfzI9LQvyo2Q9rJGZx/l0Jt3LlQFRwr9blw5LcylQUbJSNh5kcBycezAbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713730590;
	bh=M7Y1sxNayR3zJxzitRIvgx/57iw0C9+tj16k9Su8WbI=;
	h=Subject:From:To:Date:From;
	b=ogS+eHk126ZRljSbyd+YmTvnXsdmzRnZ1s15pVaCYcYdf+hZIyia4LUQ9P5IETAvy
	 CHV91YRgcuUxjTVYRJEcIwoOZ7vFDPuW568b7ixKo3m3TFVVbKNBmCNqdVZBVwuaHn
	 v3Thujso8KIVm8LFI0i9NtTv59nX4ra0Cfb7O/u8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BFFC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sun, 21 Apr 2024 20:16:29 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D5088C32751
	for <linux-kernel-announce@vger.kernel.org>; Sun, 21 Apr 2024 20:16:29 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 21 Apr 2024 20:16:29 +0000
Message-Id: <20240421201629.release-6.9-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.9-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.9-rc5/v6.8

Linux kernel version 6.9-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.9-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.9-rc5/v6.8

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9-rc5/v6.9-rc4

