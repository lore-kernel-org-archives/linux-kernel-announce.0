Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD09223338
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753341919; cv=none; b=fTWa8/081vIrVN13H/68BUrOnmguMUfnw1z6LILe9sI9xdkmQiUg0f2mCzqk8hpFq9AHCL/RUK3+TSGP2JYKrFIYB1LIG5LJNr3vLYUMxdk1jg2jy+2MKsMfzhWlCClwZ9WUFt+oYcAdwQi/pIMF5kUKmMy7zQ9vQe/jcXPRCKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753341919; c=relaxed/simple;
	bh=NGYCbCRvNDQVdjFVWNEtea2Kz/jqcGOWpzfsBZH87ww=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tC9CU+8MOcH3aYnj3JeUzB1UNtfWKpv6hMhwiak+oVku2gP0Ys94XMC87dIWW9WFXM7+NCp8Q+Jr99yO8D7bT+eTckwiVgeChoRtF/7Ye1ine6ANGdKlWKFH//+oXsiNmtGhgehTlfImk0ek3ox0K8iA/yACnR7k3RcLjNyPmrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1753341919;
	bh=NGYCbCRvNDQVdjFVWNEtea2Kz/jqcGOWpzfsBZH87ww=;
	h=Subject:From:To:Date:From;
	b=DPJtfQWjNoVQtA3oeTcBeSNt3pSlV7xFQjiE23rWs5vXcjOc4/uf4I+ftuPKsj2Kx
	 m0Nd0HhFzFEoleYZs/8JhMtFRyIc0pjIN1LNhK3zXjT3n5re3CMjizvFWkEiYUNm9T
	 Q3OvxmQy+9oD5ypT4Sq7fKVYq2IZEeQxUV7j5wzw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CF27CC4CEED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:25:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EE596383BF4E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 24 Jul 2025 07:25:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.8 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 24 Jul 2025 07:25:35 +0000
Message-Id: <20250724072535.release-6.15.8@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.8
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.8.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.8.xz

Linux kernel version 6.15.8 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.8.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.8.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.8.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.8/v6.15.7

