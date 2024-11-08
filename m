Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477EEC8EB
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 16:05:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731081936; cv=none; b=eSzarKGDoLfH28ZCA/A7IQJ6OM+gZIAO6gnklT7/8jMUoWbXj0O59SOtmB9HAKzYLPXo0Icyx+IGAyD+Y19xf1abZqzZNf0xbAIB/03/rrpMJey4jLqSlpqcy6HI2NsCV9eGxpdixvUng8PcIs7+OGzg3yVS1CL5wdGGJ2a618c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731081936; c=relaxed/simple;
	bh=WEXZ8bTtNTjQhoRJ/uxq5t78XgLmDlY8W8KHTdrws/w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Qz9imoJumX0zdjsVWyZ3qxTjYnuwmwHBx+pChnPLhCn8Xy92TmSaoSmgBQzJWO20sC1uKe70j/wKDII85XIRGPPElUWEiYCM1nVPXzI2GlkiyRmm5YBVib87qdshQ/UR5vpyezpzvq4JeSyB/G3O1SO9pUp0YcKManbADHqcXNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731081936;
	bh=WEXZ8bTtNTjQhoRJ/uxq5t78XgLmDlY8W8KHTdrws/w=;
	h=Subject:From:To:Date:From;
	b=tTAt/U1R6mA1TzklcSiWZd05P5NjTqfVZQldLlKQVo/X+GwIlmV5imT8ezz+fyB0Q
	 px9d66ErkklbXaxQl4I26DDyVzRhSy43tJ6V8kXcHUG8azv2ziVcz3gdeqfXaSTlvX
	 XK6RygvQN8l3sp9oDRG84KEwc1GkTuySAeM5yYf4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E60DDC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 16:05:35 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 764DD3809A80
	for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Nov 2024 16:05:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 08 Nov 2024 16:05:44 +0000
Message-Id: <20241108160544.release-6.11.7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.7
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.7.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.7.xz

Linux kernel version 6.11.7 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.7.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.7.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.7.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.7/v6.11.6

