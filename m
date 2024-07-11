Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3EF15E5C9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720696845; cv=none; b=a8E94pXDvKde9TxuktBzA28K5S0IFIuburvMwgS1IUIwlM47Gfs1KKwOyuvlzhAwpdcMTn+/0NaGLABp6jI5Ah/3kvAUs22cCQ6QWgYDagC1uxvXK3qTVCICNcmrbF2JP42NhAR0LFajbDDde4ZvDWxUo+gSxWSUvaTyXvxg7mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720696845; c=relaxed/simple;
	bh=iZWLSm1C1CxVNrAb5701bEo8KubtTPrFH48H6RFKu6w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=fDXFwOu95CsXQ8vrN2RrxU/g0et3FPK3+VyuVTdHvAbOclorIxZ5/TNp8j72sYr0d0BLccRv5URh+2rDbYKTkbwaeE6T0rfyJA5G856mNIAcsmMYZXyH3l9bWZA2Q6nHNP4nkDto3ASfxqH87kB10d2wRgq5NyOppjlZyrFJBRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720696845;
	bh=iZWLSm1C1CxVNrAb5701bEo8KubtTPrFH48H6RFKu6w=;
	h=Subject:From:To:Date:From;
	b=mQmnx4a46Vht+oB4yKo/iZhTDg5zsT8erQ2v38M+bgYmEZAYkaSbPNc7HG5/C8QSa
	 ZeqlcaNSh3YU1Eb+QlSWqRD6HaQJaMwvTXR/Xu4bPpzvX3Dx426OFs6X8zM9nbs3+3
	 J88m4a8zYlBw79xvQZqs/7HV1dZeqbpEfMlGyn7I=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 58836C116B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:20:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 45022C433E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 11 Jul 2024 11:20:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 11 Jul 2024 11:20:45 +0000
Message-Id: <20240711112045.release-6.9.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.9.xz

Linux kernel version 6.9.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.9.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.9.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.9.9/v6.9.8

