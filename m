Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4A91FCCF8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761743467; cv=none; b=apnMrzmfns9WOvkUbfQqG0TXh7/5/bwWb2c9b3V3LD9og8fD2zQ3lRtS+ljpa3UbClTjPJhIacFQ/9y/i3J+VF3eE4aWtnFMBQKo2gDms+QWqClcnOEFviGGVmEBveYs3IKr/cyTPG0OFNDf/fQeXUhqeM7tnjHsD0H0Y0pFNJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761743467; c=relaxed/simple;
	bh=pKwGmDSlYczM1eOTRnmKGubNjSZAOSyqrpdFAa7s5H4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Nw8I8TZLAUuCbxSR3oV7OILTQkWreKox+jtyoDy+6DCQzNlo8sKxBvDwZ/2S4BRcExmCwAg0LemK2zxqkN/FqOZ19Hg9Je+ULxOmnqv9IMa0E5rQyc/vRaMZPTIbpvcCewd50JJ2wVVg0/2pWG2QUd+LOuKuj+lKbtWo88gPXWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761743467;
	bh=pKwGmDSlYczM1eOTRnmKGubNjSZAOSyqrpdFAa7s5H4=;
	h=Subject:From:To:Date:From;
	b=kE8IezDl2hke9asj5NBbiev09sXTjMFwFc/Py7j3qdYaWF5vcoPLnFlIIKiGvt2au
	 3eV+zlrM1MN5uYiOgbNiY/ea8H5i0xvmpHpN3TYaB4Jq21uHPSYyKtp3ii88bmLRRP
	 m/tQT+C94QU7IX3CPy/ncxUWsPh5IIvSm6me3Kdo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 979E1C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:11:05 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF3D93A41006
	for <linux-kernel-announce@vger.kernel.org>; Wed, 29 Oct 2025 13:10:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.301 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 29 Oct 2025 13:10:42 +0000
Message-Id: <20251029131042.release-5.4.301@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.301
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.301.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.301.xz

Linux kernel version 5.4.301 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.301.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.301.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.301.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.301/v5.4.300

