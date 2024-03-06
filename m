Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C85428EC
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709737254; cv=none; b=Ae8K+H/AdNWZ43Dp6zIVa7G55VeEhcYLFP7rvXH2U/Z1nBY7P0fGOenhYMLgs3TQOB2fyp31iQxg4AD53193HpiWBA8rcQ02TvkYVOTA5z04Hv26gGMG1WSxE+QRaLj2tdre2V1A820PR6x0GnRDe8LANYvb15JnGHSm1MDyeIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709737254; c=relaxed/simple;
	bh=MzqNJUaXh1vLA07RxLcYNATUUDTLVgozoaDb0fQruxQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Ecf4LjmsfNqRKx3zjpUk4YcoG5CScVCwDnyENS3v6+t2i+w9nEq1syE15WLCZKY8LXGdSypDv2BwgfUKZOAqff3HEyNTSQVAxShrex3VKQZuITmKrfIrd1If80Hf4DQALFzAjfwJ4ySFnPh7LUY+MVG4WVOlC7YhZcFOLrMHROA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709737254;
	bh=MzqNJUaXh1vLA07RxLcYNATUUDTLVgozoaDb0fQruxQ=;
	h=Subject:From:To:Date:From;
	b=uBh+qMLuNlnVzwiiaelO6GVLeoKc5GXVbqF5vy5ihU6UWDKQ3l05gf0k3+PLlpq1Z
	 qi1PBt44Gvgnb+L6o29/WK7TQa49PzAePSnyqDHigMl5kkkK5TP2a1DDbR/sp92nXL
	 +PlkQWjz2zH3SSuvbYBtIlQTQB2DHafMlxTa5OH0=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 45CA3C43390
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:00:54 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 23295D84BDF
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:00:54 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.212 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 06 Mar 2024 15:00:54 +0000
Message-Id: <20240306150054.release-5.10.212@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.212
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.212.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.212.xz

Linux kernel version 5.10.212 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.212.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.212.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.212.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.212/v5.10.211

