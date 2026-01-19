Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24CA35CBD0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833802; cv=none; b=SKuVFUYpjdIZssAkr1Rc5S7DJgrHBYuNvgPEUkAW0qwNBSOEffy8h4UrTg2rRAphkrXtz2FeIjvcp8dwcaxHnSf5Q2jyfpa/iYES/jOqlOBVgD3ObRPmQ0fjMJRLC80ebQDwsIVmb0dAgPk4xWA7RGsC2HJZV5+wghYqEt9TbBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833802; c=relaxed/simple;
	bh=OyVbVgcStv6zn6lcrZ2Edgcg9WVK3NbuupbBb8hxSz8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=YbL2sK4L16L0XZnBgRADwfflMorPLEJVXo69ov4+qjkeblXhp61qItvh6oO4FgJpcqiw1lyd6pmF/9yPjtsH/0ipgs4PjKqtC9JdtY+B2GwxT2GMgmDhy9u4L1xZ988DTzh0poRvHlkcs9SSXePeJPtRBd1OwxmCZA3zxPDivmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768833802;
	bh=OyVbVgcStv6zn6lcrZ2Edgcg9WVK3NbuupbBb8hxSz8=;
	h=Subject:From:To:Date:From;
	b=gSdl5J/a9/6sNOCGwfRb123R7je4NWm+GudxEoTUexlY5gJzijEQfnQ8biXQQrRdp
	 3CEJb7XU1mQ6CAEhY0BQzz9OAiF8k5IFdp7rS05RaFDOldLGzGUB+HT8KqfwHb8Ma5
	 aBTxS9vc4nNEvHoxOse0XXinirYCsKJioSA43XMs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6A88C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B585F3A72A5E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:39:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.161 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Jan 2026 14:39:52 +0000
Message-Id: <20260119143952.release-6.1.161@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.161
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.161.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.161.xz

Linux kernel version 6.1.161 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.161.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.161.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.161.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.161/v6.1.160

