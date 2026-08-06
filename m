Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120F23769EC
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786038664; cv=none; b=qQUI3AN6IHDUj/5ZnDj7RX16pbyhA7z1TIs3gU+cARfO+IRw5NrDgNBfz9JMAzMddgxXiHDY45ht9M7llbq/MrdHfIUUAyOpM8lsGc9KTBtTSm1mPnML2KE9Lppv8qEpP+4SktD1nN+vfTF3WpppRGg7UAvtEjBhcmxipGrgi+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786038664; c=relaxed/simple;
	bh=mMpuZXVgFmpNd9o01VgpLX/eNY/OCn77JsCtFUB7Xtk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hBZ7ou9xhmUy1oIWFOlSY/Lwdg0pN1ShiXPP4N1O5Y0ZXHM9L3p9Ohsk3LBn5YAAblF8Dt/ll+2VEa6zcs3XlBfp/uTfjlZb/VUrME8LtF+B+ykHsD+Rrd45koNTBb4zQIjx19Qje/AM9tncIOyAJZVPsn+j1nNCxOg3p5DQd5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1786038664;
	bh=mMpuZXVgFmpNd9o01VgpLX/eNY/OCn77JsCtFUB7Xtk=;
	h=Subject:From:To:Date:From;
	b=CFj6MSBGDbvDljuCZZBwBHvc3NRPRk+I0Xllpg6wYjuVmoqU9hEqz1/AoipaFLPo5
	 5kpFx5jMtOM2iBHGwluMhLElHHcz9b423Gp/yeGWvN38yj4om20XjjKhkPe1cgHpZX
	 5SKzCbAsr/5RbibrKYpi2pAMLLARXL4tJlnaG0Wc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E183B1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:51:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 596383809A18
	for <linux-kernel-announce@vger.kernel.org>; Thu,  6 Aug 2026 17:50:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.43 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 06 Aug 2026 17:50:21 +0000
Message-Id: <20260806175021.release-6.18.43@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.43
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.43.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.43.xz

Linux kernel version 6.18.43 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.43.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.43.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.43.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.43/v6.18.42

