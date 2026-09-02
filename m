Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAB749CF24
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788354679; cv=none; b=Z2fNa7tubB9aacSLzckMWp3+JLpiK2BmV5VWLb8kih4VTo2eLmLD2NaAz/qE/7jyxfigB/zrdts3pxQ2XWZvgnJMCPUFMHioFIaa3qtW2gVPKSPyFjge/oM29lAkn661KiHWZRlAq74RQAmO0MDl3U1Bvk99CJt7RJZElGl5j1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788354679; c=relaxed/simple;
	bh=CMgzcIWUANjsoTygrzCMcmqCVwjait7UlWpEworFc5E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=J5T8/9S+nVfjfe2j0ShZQP6HPjun+v9H3pgY2P5dv1dm87h+d6Ftm8+oL7payK+o/6YIOJIDYsXiGfdN3IGVm/zWhZKLm58drGR2rep/pqiOxZn8Hh5B7jYcirMP++oGap5EMhkvBJOwq4xvnB2M9dpIkVUJUKR0r7kHd+uimZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1788354679;
	bh=CMgzcIWUANjsoTygrzCMcmqCVwjait7UlWpEworFc5E=;
	h=Subject:From:To:Date:From;
	b=S6CLJNVLiP/KkKf78+1uC9RAx7CHo5eFJJDftLiKh+eUKhHOtsb+E0eZ+5lYS/7fW
	 6L8wz0fFpqMsJm8tqAsWF2kHESboNXZPRvSyu2CnbB5RqUbU/U98P5nv3ib0CglVMG
	 kw482cxTRB3CtyR01W+NEfbQq+lG7YCWMGSExSPM=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE3BE1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:11:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D35D339263BA
	for <linux-kernel-announce@vger.kernel.org>; Wed,  2 Sep 2026 13:10:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 02 Sep 2026 13:10:19 +0000
Message-Id: <20260902131019.release-7.2.3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.3
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.3.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.3.xz

Linux kernel version 7.2.3 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.3.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.3.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.3.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.3/v7.2.2

