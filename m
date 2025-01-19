Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D7642A92
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Jan 2025 08:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737274820; cv=none; b=YAUWk4v7Oq7JmVjhzkfZ3n6TRWB+E2EshiwLVgTKMvRIiMeiMw0S9XkjvqkKJ1ALNN/pj4Zt8B/ypx34GfjiXbVq+GXbUZlj9qoeVfBD1uADy3LxkxEFVPAqR/aRO3tespWcZkE5uAnEBCYrriQbPzaxMh/MLY8OfM72iDd0Kjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737274820; c=relaxed/simple;
	bh=orWdlYh87UeCiQ5Kd/b4/i/TOZjeJ2FOD7DtYJAi2qA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=OaHX00nXTc6JeSTuuvoJVxijJ7icRqI69YlAH83ef2dr5CH4WICfLPEtq1puRDn1+nIvdfS4cu2bd1PEPQqSBdL+Yl5j9Y3RaXnJcvw5LuiAWQxCts55f2+SYRqOZbHzjlKFBGZB209eu/AIdcCp3RzxhypBkNfFzKez/22kUac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1737274819;
	bh=orWdlYh87UeCiQ5Kd/b4/i/TOZjeJ2FOD7DtYJAi2qA=;
	h=Subject:From:To:Date:From;
	b=a+o2JQgRsJoDFsBza1+p15FR5eevaI5+9Y0CIjCf9sdV+XMvy4Hw7VTPm/nFixzGp
	 Gkrz9r8vQcTYxUPf+bHACTMCUNbinNPE2uBnI7akKkqXkLO8cnrYuXACn2ngjvrjHa
	 YrOUVO5Z2Cp+rEuBh0pqk74bl9zGxj4VfRjz0eSs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EBB9C4CED6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Jan 2025 08:20:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 375A1380AA62
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Jan 2025 08:20:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.126 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 19 Jan 2025 08:20:42 +0000
Message-Id: <20250119082042.release-6.1.126@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.126
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.126.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.126.xz

Linux kernel version 6.1.126 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.126.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.126.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.126.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.126/v6.1.125

